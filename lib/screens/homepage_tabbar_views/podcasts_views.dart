import 'package:flutter/material.dart';

class PodcastTabbarViews extends StatelessWidget {
  const PodcastTabbarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(25, 20, 20, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Flexible(child: Text('Not available for now, COMING SOON...', style: TextStyle(
            fontSize: 22,
          ), textAlign: TextAlign.center,
            overflow: TextOverflow.clip,)),
        ),
      ),
    );
  }
}
