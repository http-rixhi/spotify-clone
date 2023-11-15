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
                                  'assets/images/spotify_liked.jpeg',
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
                                  'assets/images/spotify_discover_weekly.jpeg',
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
                          child: SizedBox(
                            height: 210,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/song_goodbye.png',
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
            ],
          ),
        ),
      ),
    );
  }
}
