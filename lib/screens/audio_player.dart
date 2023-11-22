import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(100, 0, 0, 1),
                Color.fromRGBO(80, 0, 0, 1),
                Color.fromRGBO(60, 0, 0, 1),
                Color.fromRGBO(40, 0, 0, 1),
                Color.fromRGBO(20, 0, 0, 1),
              ]
            )
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Column(
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
                  SizedBox(height: 28,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: StreamBuilder<PositionData>(
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
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Controls(audioPlayer: _audioPlayer),
                  SizedBox(height: 8,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone_android_outlined, color: Colors.green),
                            Text('Rishi-Phone', style: TextStyle(
                              fontSize: 12,
                              color: Colors.green
                            ),)
                          ],
                        ),
                        Icon(Icons.share, )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('PLAYING FROM YOUR LIBRARY'),
        ),
        SizedBox(height: 60,),

        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
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

        SizedBox(height: 60,),

        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              artist,
              style: TextStyle(fontSize: 13),
              textAlign: TextAlign.center,
            ),
          ),
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
        IconButton(onPressed: audioPlayer.shuffle, iconSize: 25, icon: Icon(Typicons.shuffle)),
        IconButton(onPressed: audioPlayer.seekToPrevious, iconSize: 55, icon: Icon(Icons.skip_previous_rounded)),
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
                  icon: Icon(Icons.play_circle));
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                  onPressed: audioPlayer.pause,
                  iconSize: 80,
                  icon: Icon(Icons.pause_circle));
            }
            return Icon(Icons.play_circle, size: 70);
          },
        ),
        IconButton(onPressed: audioPlayer.seekToNext, iconSize: 55, icon: Icon(Icons.skip_next_rounded)),
        Icon(Iconic.loop, size: 25,)
      ],
    );
  }
}