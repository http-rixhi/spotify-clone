import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/audio_player.dart';

class RishiPlaylist extends StatelessWidget {
  RishiPlaylist({super.key});

  final List _songplaylist = [
    {
      'songUrl': 'asset:///assets/audio/song_goodbye.mp3',
      'imageUrl': 'https://i.ytimg.com/vi/NH4j3_0jE-4/sddefault.jpg',
      'id': 0,
      'title': 'Goodbye',
      'artist': 'lekhak'
    },
    {
      'songUrl': 'asset:///assets/audio/song_LongTimeNoSee.mp3',
      'imageUrl': 'https://c.saavncdn.com/499/Long-time-no-see-Urdu-2023-20231014162439-500x500.jpg',
      'id': 1,
      'title': 'Long Time No See',
      'artist': 'AUR'
    },
    {
      'songUrl': 'asset:///assets/audio/song_TuHaiKahan.mp3',
      'imageUrl': 'https://i.ytimg.com/vi/AX6OrbgS8lI/sddefault.jpg',
      'id': 2,
      'title': 'Tu Hai Kahan',
      'artist': 'AUR'
    },
    {
      'songUrl': 'asset:///assets/audio/song_TujheHasilKarunga.mp3',
      'imageUrl': 'https://c.saavncdn.com/901/Hacked-Hindi-2020-20200130070823-500x500.jpg',
      'id': 3,
      'title': 'Tujhe Hasil Karunga',
      'artist': 'Stebin Ben'
    },
    {
      'songUrl': 'asset:///assets/audio/song_SamjhoNa.mp3',
      'imageUrl': 'https://c.saavncdn.com/852/Samjho-Na-Hindi-2022-20220209214141-500x500.jpg',
      'id': 4,
      'title': 'Samjho Na',
      'artist': 'Aditya Rekhari'
    },
    {
      'songUrl': 'asset:///assets/audio/song_GhodeyPeSawaar.mp3',
      'imageUrl': 'https://a10.gaanacdn.com/images/albums/35/6677135/crop_480x480_6677135.jpg',
      'id': 5,
      'title': 'Ghodey Pe Sawaar',
      'artist': 'Amit Trivedi'
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(11, 22, 11, 0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromRGBO(155, 155, 73, 1),
                      Color.fromRGBO(66, 66, 12, 1),
                      Color.fromRGBO(44, 44, 17, 1)
                    ])),
                child: SafeArea(
                  child: Column(
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 12,
                              offset: Offset(4, 4),
                            )
                          ]),
                          child: Image.asset(
                            'assets/images/rishi_raj.jpeg',
                            height: 210,
                            width: 210,
                          ),
                        ),
                      )),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(11, 1, 1, 15),
                          child: Text("Rishi's Special",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 22,
                          ),),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(11, 1, 1, 15),
                          child: Text("lekhak + 9",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 11
                          ),),
                        ),
                      ),
                       const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(11, 1, 1, 0),
                          child: Text("EP . 2023",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(44, 44, 17, 1),
                      // Color.fromRGBO(32, 32, 17, 1),
                      Color.fromRGBO(18, 18, 18, 1)
                    ]
                  )
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.add_circle_outline, size: 30, color: Colors.white60,),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.download_for_offline_outlined, size: 30, color: Colors.white60,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.more_vert, size: 30, color: Colors.white60,),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.shuffle, size: 30, color: Colors.white60,),
                        ),
                        Icon(Icons.play_circle, size: 60, color: Colors.green,)
                      ],
                    )
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: _songplaylist.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: _songplaylist[index]['imageUrl'].toString(),
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Flexible(
                        child: Text(
                      _songplaylist[index]['title'].toString(),
                      overflow: TextOverflow.ellipsis,
                    )),
                    subtitle: Text(_songplaylist[index]['artist'].toString()),
                    trailing: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
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
                ),
              ),
            ],
          )),
    );
  }
}
