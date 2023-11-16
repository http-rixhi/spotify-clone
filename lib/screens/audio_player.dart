import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';

class PositionData {
  PositionData(
      this.position,
      this.bufferedPosition,
      this.duration,
      );

  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({
    super.key,
    required this.songUrl,
    required this.imageUrl,
    required this.id,
    required this.title,
    required this.artist
  });

  final String songUrl;
  final String imageUrl;
  final int id;
  final String title;
  final String artist;

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}
class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  late AudioPlayer _audioPlayer;

  late ConcatenatingAudioSource _playlist = ConcatenatingAudioSource(
    children: [
      AudioSource.uri(Uri.parse(widget.songUrl),
          tag: MediaItem(
              id: widget.id.toString(),
              title: widget.title,
              artist: widget.artist,
              artUri: Uri.parse(widget.imageUrl))),
      // AudioSource.uri(Uri.parse('asset:///assets/audio/song_LongTimeNoSee.mp3'),
      //     tag: MediaItem(
      //         id: '1',
      //         title: 'Long Time No See',
      //         artist: 'AUR',
      //         artUri: Uri.parse('https://i.ytimg.com/vi/cOE_R8w7KTA/maxresdefault.jpg'))),
      // AudioSource.uri(Uri.parse('asset:///assets/audio/song_TuHaiKahan.mp3'),
      //     tag: MediaItem(
      //       id: '2',
      //       title: 'Tu Hai Kahan',
      //       artist: 'AUR',
      //       artUri: Uri.parse('https://i.ytimg.com/vi/ad-hYYIWqZw/maxresdefault.jpg'),
      //     )),
    ],
  );

  Stream<PositionData> get _positionDataStrean =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
            (position, bufferedPosition, duration) => PositionData(
          position,
          bufferedPosition,
          duration ?? Duration.zero,
        ),
      );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioPlayer = AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    await _audioPlayer.setAudioSource(_playlist);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<SequenceState?>(
              stream: _audioPlayer.sequenceStateStream,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state?.sequence.isEmpty ?? true) {
                  return SizedBox();
                }
                final metadata = state!.currentSource!.tag as MediaItem;
                return MediaMetaData(
                  imageUrl: metadata.artUri.toString(),
                  title: metadata.title,
                  artist: metadata.artist ?? '',
                );
              },
            ),
            StreamBuilder<PositionData>(
              stream: _positionDataStrean,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return ProgressBar(
                  progress: positionData?.position ?? Duration.zero,
                  buffered: positionData?.bufferedPosition ?? Duration.zero,
                  total: positionData?.duration ?? Duration.zero,
                  onSeek: _audioPlayer.seek,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Controls(audioPlayer: _audioPlayer),
          ],
        ),
      ),
    );
  }
}

class MediaMetaData extends StatelessWidget {
  const MediaMetaData(
      {super.key,
        required this.imageUrl,
        required this.title,
        required this.artist});

  final String imageUrl;
  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 4),
                blurRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 22, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          artist,
          style: TextStyle(fontSize: 20, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({
    super.key,
    required this.audioPlayer,
  });

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: audioPlayer.seekToPrevious, iconSize: 60, icon: Icon(Icons.skip_previous_rounded)),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;

            if (!(playing ?? false)) {
              return IconButton(
                  onPressed: audioPlayer.play,
                  iconSize: 80,
                  icon: Icon(Icons.play_arrow_rounded));
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                  onPressed: audioPlayer.pause,
                  iconSize: 80,
                  icon: Icon(Icons.pause_rounded));
            }
            return Icon(Icons.play_arrow_rounded, size: 80);
          },
        ),
        IconButton(onPressed: audioPlayer.seekToNext, iconSize: 60, icon: Icon(Icons.skip_next_rounded)),
      ],
    );
  }
}