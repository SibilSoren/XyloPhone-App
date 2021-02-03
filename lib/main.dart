import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


void main() => runApp(XyloPhone());

class XyloPhone extends StatefulWidget {
  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {

    void playSound(int soundNumber) async{
    final player = AudioCache();
    player.play('note$soundNumber.wav');
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
            keyBuilder(color: Colors.red,soundNum: 1),
            keyBuilder(color: Colors.blue,soundNum: 2),
            keyBuilder(color: Colors.green,soundNum:3),
            keyBuilder(color: Colors.yellow,soundNum: 4),
            keyBuilder(color: Colors.teal,soundNum: 5),
            keyBuilder(color: Colors.orange,soundNum: 6),
            keyBuilder(color: Colors.indigo,soundNum: 7),

          ],
        )
      )),
    );
  }

    Expanded keyBuilder({Color color,int soundNum}){
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed:(){
            playSound(soundNum);
          },
        ),
      );
    }
}
