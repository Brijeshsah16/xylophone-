import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int x)
  {
    final player=AudioCache();

  player.play('note$x.wav');
  }
  Expanded buildkey({ Color color,int soundnumber })
  {
      return   Expanded(
      child: FlatButton(

        // minWidth: double.infinity,
        color: color,
        onPressed: (){
          playsound(soundnumber);
        },

                        ),
                   );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              buildkey(color: Colors.blue, soundnumber: 1),
              buildkey(color: Colors.indigo, soundnumber: 2),
              buildkey(color: Colors.greenAccent, soundnumber: 3),
              buildkey(color: Colors.green, soundnumber: 4),
              buildkey(color: Colors.orange, soundnumber: 5),
              buildkey(color: Colors.yellow, soundnumber: 6),
              buildkey(color: Colors.red, soundnumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
