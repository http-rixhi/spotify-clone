import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify_clone/screens/audio_player.dart';

class RishiPlaylist extends StatelessWidget {
  RishiPlaylist({super.key});

  List _songplaylist = [
    {
      'songUrl': 'asset:///assets/audio/song_goodbye.mp3',
      'imageUrl': 'https://i.ytimg.com/vi/ad-hYYIWqZw/maxresdefault.jpg',
      'id': 0,
      'title': 'Goodbye',
      'artist': 'lekhak'
    },
    {
      'songUrl': 'asset:///assets/audio/song_LongTimeNoSee.mp3',
      'imageUrl': 'https://i.ytimg.com/vi/ad-hYYIWqZw/maxresdefault.jpg',
      'id': 1,
      'title': 'Long Time No See',
      'artist': 'AUR'
    },
    {
      'songUrl': 'asset:///assets/audio/song_TuHaiKahan.mp3',
      'imageUrl': 'https://i.ytimg.com/vi/ad-hYYIWqZw/maxresdefault.jpg',
      'id': 2,
      'title': 'Tu Hai Kahan',
      'artist': 'AUR'
    },
    {
      'songUrl': 'asset:///assets/audio/song_goodbye.mp3',
      'imageUrl': 'https://i.ytimg.com/vi/ad-hYYIWqZw/maxresdefault.jpg',
      'id': 3,
      'title': 'Special Song',
      'artist': 'Rishi Raj'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: _songplaylist.length,
            itemBuilder: (context, index) => ListTile(
              leading: CachedNetworkImage(
                imageUrl: _songplaylist[index]['imageUrl'].toString(),
                height: 50,
                width: 50,
              ),
              title: Flexible(
                  child: Text(
                _songplaylist[index]['title'].toString(),
                overflow: TextOverflow.ellipsis,
              )),
              subtitle: Text(_songplaylist[index]['artist'].toString()),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              onTap: () {
                _songplaylist[index];
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MusicPlayerScreen(
                            songUrl: _songplaylist[index]['songUrl'],
                            imageUrl: _songplaylist[index]['imageUrl'],
                            id: index,
                            title: _songplaylist[index]['title'],
                            artist: _songplaylist[index]['artist'])));
              },
            ),
          )),
    );
  }
}
