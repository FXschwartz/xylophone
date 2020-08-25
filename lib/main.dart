import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int fileNumber) {
    final player = AudioCache();
    player.play('note$fileNumber.wav');
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
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: FlatButton(
                    onPressed: () {
                      playSound(1);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: FlatButton(
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: FlatButton(
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: FlatButton(
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blueGrey,
                  child: FlatButton(
                    onPressed: () {
                      playSound(5);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: FlatButton(
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: FlatButton(
                    onPressed: () {
                      playSound(7);
                    },
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
