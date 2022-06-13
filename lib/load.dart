import 'package:flabbybird/home.dart';
import 'package:flutter/material.dart';
import 'package:flabbybird/Barriers.dart';
import 'package:flabbybird/bird.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart' show AudioCache;

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  void playsound() {
    final player = AudioCache();
    player.play('asset/die.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.black,
              child: Image.asset(
                'asset/6.png',
                height: 200,
                width: 200,
              ),
            )),
        Expanded(
            child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: ElevatedButton(
            child: const Text(
              'Start Game',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 50,
              ),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
              playsound();
            },
          ),
        ))
      ]),
    );
  }
}
