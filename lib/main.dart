import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int fileNumber) {
    final player = AudioCache();
    player.play('note$fileNumber.wav');
  }

  buildKey({Color color, int soundFile}) {
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            playSound(soundFile);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundFile: 1),
              buildKey(color: Colors.orange, soundFile: 2),
              buildKey(color: Colors.yellow, soundFile: 3),
              buildKey(color: Colors.green, soundFile: 4),
              buildKey(color: Colors.teal, soundFile: 5),
              buildKey(color: Colors.blue, soundFile: 6),
              buildKey(color: Colors.purple, soundFile: 7),
            ],
          ),
        ),
      ),
    );
  }
}
