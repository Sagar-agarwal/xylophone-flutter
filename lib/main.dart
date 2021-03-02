import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();
                player.play("note1.wav");
              },
              child: Text("Click me"),
            ),
          ),
        ),
      ),
    );
  }
}
