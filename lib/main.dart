import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:spotify_clone/screens/homepage.dart';
import 'package:spotify_clone/screens/library.dart';
import 'package:spotify_clone/screens/premium.dart';
import 'package:spotify_clone/screens/search.dart';

import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/maki_icons.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:fluttericon/rpg_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:fluttericon/web_symbols_icons.dart';
import 'package:fluttericon/zocial_icons.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Montserrat',
        brightness: Brightness.dark,
      ),
      home: const BottomNavBar(),
    );
  }
}

// ignore: camel_case_types
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    HomeScreens(),
    SearchScreens(),
    LibraryScreens(),
    PremiumScreens()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(fontSize: 9,),
        unselectedLabelStyle: TextStyle(fontSize: 9),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Elusive.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(backgroundColor: Colors.black, icon: Icon(WebSymbols.search),
          label: 'Search',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.library_books),
          label: 'Your Library',
          ),
          BottomNavigationBarItem(icon: Icon(FontAwesome5.spotify),
          label: 'Premium',
          )
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
