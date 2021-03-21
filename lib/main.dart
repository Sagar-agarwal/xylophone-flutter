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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: XyloScreen(),
        ),
      ),
    );
  }
}

class XyloScreen extends StatelessWidget {
  const XyloScreen({
    Key key,
  }) : super(key: key);

  void playSound(soundName) {
    final player = AudioCache();
    player.play(soundName);
  }

  Expanded getXyloButton(Color color, String soundName) => Expanded(
        child: MaterialButton(
          enableFeedback: false,
          color: color,
          child: Text(''),
          onPressed: () {
            playSound(soundName);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getXyloButton(Colors.red[600], 'note1.wav'),
          getXyloButton(Colors.orange[600], 'note2.wav'),
          getXyloButton(Colors.yellow[600], 'note3.wav'),
          getXyloButton(Colors.green[600], 'note4.wav'),
          getXyloButton(Colors.teal[600], 'note5.wav'),
          getXyloButton(Colors.blue[600], 'note6.wav'),
          getXyloButton(Colors.purple[600], 'note7.wav')
        ],
      ),
    );
  }
}
