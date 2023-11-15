import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/homepage_tabbar_views/all_views.dart';
import 'package:spotify_clone/screens/homepage_tabbar_views/music_views.dart';
import 'package:spotify_clone/screens/homepage_tabbar_views/podcasts_views.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> with TickerProviderStateMixin {
  late final TabController _tabController;
  bool _allTabIsVisible = true;
  bool _musicTabIsVisible = false;
  bool _podcastsTabIsVisible = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 3, vsync: this);
  // }
  //
  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(18, 18, 18, 1),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text("Good Evening", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: null, icon: Icon(CupertinoIcons.bell, color: Colors.white,)),
                      IconButton(onPressed: null, icon: Icon(CupertinoIcons.clock, color: Colors.white,)),
                      IconButton(onPressed: null, icon: Icon(Icons.settings, color: Colors.white,))
                    ],
                  )
                ],
              ),

              // TabBar(
              //   controller: _tabController,
              //   indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(80),
              //   ),
              //   tabs: [
              //     Tab(
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 8),
              //         child: FilledButton(
              //           onPressed: () {},
              //           child: Text('All', style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 12,
              //           ),),
              //           style: ButtonStyle(
              //             backgroundColor: MaterialStatePropertyAll(Colors.green),
              //           ),
              //
              //         ),
              //       ),
              //     ),
              //     Tab(
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 8),
              //         child: FilledButton(
              //           onPressed: () {},
              //           child: Text('Music', style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 12
              //           ),),
              //           style: ButtonStyle(
              //               backgroundColor: MaterialStatePropertyAll(Colors.white30)
              //           ),
              //         ),
              //       ),
              //     ),
              //     Tab(
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 8),
              //         child: FilledButton(
              //           onPressed: () {},
              //           child: Text('Podcasts & Shows', style: TextStyle(
              //               color: Colors.white,
              //               fontSize: 12
              //           ),),
              //           style: ButtonStyle(
              //               backgroundColor: MaterialStatePropertyAll(Colors.white30)
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Expanded(child: TabBarView(
              //   controller: _tabController,
              //   children: [
              //     AllTabbarViews(),
              //     MusicTabbarViews(),
              //     PodcastTabbarViews()
              //   ],
              // )),






              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: FilledButton(
                          onPressed: () {
                            setState(() {
                              _musicTabIsVisible = false;
                              _podcastsTabIsVisible = false;
                              _allTabIsVisible = true;
                            });
                          },
                          child: Text('All', style: TextStyle(
                            color: _allTabIsVisible ? Colors.black : Colors.white,
                            fontSize: 12,
                          ),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            _allTabIsVisible ? Colors.green : Colors.white12,
                          ),
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: FilledButton(
                          onPressed: () {
                            setState(() {
                              _podcastsTabIsVisible = false;
                              _allTabIsVisible = false;
                              _musicTabIsVisible = true;
                            });
                          },
                          child: Text('Music', style: TextStyle(
                            color: _musicTabIsVisible ? Colors.black : Colors.white,
                            fontSize: 11
                          ),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              _musicTabIsVisible ? Colors.green :Colors.white12,
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: FilledButton(
                          onPressed: () {
                            setState(() {
                              _musicTabIsVisible = false;
                              _allTabIsVisible = false;
                              _podcastsTabIsVisible = true;
                            });
                          },
                          child: Text('Podcasts & Shows', style: TextStyle(
                            color: _podcastsTabIsVisible ? Colors.black : Colors.white,
                            fontSize: 11
                          ),),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            _podcastsTabIsVisible ? Colors.green : Colors.white12,
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: _allTabIsVisible,
                child: Expanded(
                  child: AllTabbarViews(),
                ),
              ),
              Visibility(
                visible: _musicTabIsVisible,
                child: Expanded(child: MusicTabbarViews()),
              ),
              Visibility(
                visible: _podcastsTabIsVisible,
                child: Expanded(child: PodcastTabbarViews()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
