import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify_clone/screens/audio_player.dart';
import 'package:spotify_clone/screens/playlists_views/rishi_playlist.dart';


class AllTabbarViews extends StatelessWidget {
  const AllTabbarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 18, 18, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RishiPlaylist()));
                        },
                        child: Card(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_liked.jpeg',
                                  width: 60,
                                  height: 60,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Liked Songs',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_pov_love.jpeg',
                                  width: 60,
                                  height: 60,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "pov you're in love",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_aur.png',
                                  width: 60,
                                  height: 60,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'AUR',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_lekhak.png',
                                  width: 60,
                                  height: 60,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "lekhak",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_discover_weekly.jpeg',
                                  width: 60,
                                  height: 60,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'Discover Weekly',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 11),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RishiPlaylist()));
                        },
                        child: Card(
                            color: Color.fromRGBO(42, 42, 42, 1),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    'assets/images/rishi_raj.jpeg',
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Rishi's Special",
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),

// =============================================================================

              Padding(
                padding: const EdgeInsets.fromLTRB(11, 18, 0, 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Fresh new music',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic1.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Shreya Ghoshal',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic2.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Anirudh Ravichander',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic1.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Shreya Ghoshal',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic2.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Anirudh Ravichander',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic1.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Shreya Ghoshal',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic2.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Anirudh Ravichander',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_freshnewmusic1.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Pritam, Arijit Singh, Shreya Ghoshal',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: SizedBox(
                          height: 210,
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/spotify_freshnewmusic2.jpeg',
                                width: 150,
                                height: 150,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 13),
                                  child: Text(
                                    'Pritam, Arijit Singh, Anirudh Ravichander',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 12
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// =============================================================================

              Padding(
                padding: const EdgeInsets.fromLTRB(11, 18, 0, 14),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recently played',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 21,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    'assets/images/song_goodbye.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'lekhak',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                CachedNetworkImage(
                                  imageUrl: 'https://yt3.ggpht.com/-MczKppo_8TQ/AAAAAAAAAAI/AAAAAAAAAAA/MLb_qfmgpsE/s900-c-k-no-mo-rj-c0xffffff/photo.jpg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'All Songs of Carryminati',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://th.bing.com/th/id/OIP.0aZ83kpOVQ4kTr2vJk0JrAHaI9?rs=1&pid=ImgDetMain',
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'Fukra Insaan',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_pov_love.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      "pov: you're in love",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    'assets/images/spotify_aur.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'AUR',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    'assets/images/rishi_raj.jpeg',
                                    width: 150,
                                    height: 150,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      'lekhak',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.5),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/spotify_liked.jpeg',
                                  width: 150,
                                  height: 150,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child: Text(
                                      "pov: you're in love",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
// =============================================================================

              Padding(
                padding: const EdgeInsets.fromLTRB(11, 7, 11, 7),
                child: InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  hoverColor: Colors.white,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(42, 42, 42, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                          child: ClipRRect(
                            child: Image.asset('assets/images/rishi_raj.jpeg', height: 250, width: 250,),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(11, 18, 11, 18),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.asset('assets/images/rishi_raj.jpeg', height: 60, width: 60,),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Text(
                                        'Rishi Raj',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Playlist',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Lekhak, Pritam, Arijit Singh, AUR, '
                                'Aditya Rikhari, Taimour Baig, Uraan, Yashraj, Anirudh Ravichander, Abdul Hannan',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 11
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add_circle_outline),
                                  SizedBox(width: 13,),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                              Icon(Icons.play_circle, size: 42,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(11, 7, 11, 7),
                child: InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  hoverColor: Colors.white,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(42, 42, 42, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                          child: ClipRRect(
                            child: CachedNetworkImage(
                              imageUrl:
                              'https://th.bing.com/th/id/OIP.GMWz2g0-buV7jbqGWKJkrAHaEK?rs=1&pid=ImgDetMain',
                              height: 250,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(11, 18, 11, 18),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: CachedNetworkImage(
                                    imageUrl:
                                    'https://th.bing.com/th/id/OIP.vZsBEmU2rBUL_lqnrkCKxQHaHa?rs=1&pid=ImgDetMain',
                                    height: 60,
                                    width: 60,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'CarryMinati',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Playlist',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Ajay Nagar (CarryMinati), Vibgyor, Wily Frenzy',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 11
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add_circle_outline),
                                  SizedBox(width: 13,),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                              Icon(Icons.play_circle, size: 42,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(11, 7, 11, 7),
                child: InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  hoverColor: Colors.white,
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(42, 42, 42, 1),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                          child: ClipRRect(
                            child: CachedNetworkImage(
                              imageUrl:
                              'https://th.bing.com/th/id/OIP.-5OQs6HVI7-zxilUjBiRvwHaHa?rs=1&pid=ImgDetMain',
                              height: 250,
                              width: 250,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(11, 18, 11, 18),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: CachedNetworkImage(
                                    imageUrl:
                                    'https://th.bing.com/th/id/OIP.ZX3FIooDVCmpoHfx3ZebkgHaEK?rs=1&pid=ImgDetMain',
                                    height: 60,
                                    width: 60,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Fukra Insaan',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Playlist',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Abhishek Malhan, Crazy Deep, Parth, Nikhita Gandhi, Amit Mishra',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                  fontSize: 11
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add_circle_outline),
                                  SizedBox(width: 13,),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                              Icon(Icons.play_circle, size: 42,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
