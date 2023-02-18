import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xylophone',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('xylophone'),

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: ElevatedButton(onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },child: Text(""),style: ElevatedButton.styleFrom(primary: Colors.red), )),
            Expanded(child: ElevatedButton(onPressed: (){
              final player = AudioCache();
              player.play('note2.wav');
            },child: Text(""), style: ElevatedButton.styleFrom(primary: Colors.orange), )),
            Expanded(child: ElevatedButton(onPressed: (){
              final player = AudioCache();
              player.play('note3.wav');
            },child: Text(""),style: ElevatedButton.styleFrom(primary: Colors.yellow),  )),
            Expanded(child: ElevatedButton(onPressed: (){
              final player = AudioCache();
              player.play('note4.wav');
            },child: Text(""),style: ElevatedButton.styleFrom(primary: Colors.green),  )),
            Expanded(child: ElevatedButton(onPressed: (){
              final player = AudioCache();
              player.play('note5.wav');
            },child: Text(""), style: ElevatedButton.styleFrom(primary: Colors.blue), )),
            Expanded(child: ElevatedButton(onPressed: (){
              final player = AudioCache();
              player.play('note6.wav');
            },child: Text(""),style: ElevatedButton.styleFrom(primary: Colors.indigo),  )),
            Expanded(child: ElevatedButton(onPressed: (){
              final player = AudioCache();
              player.play('note7.wav');
            },child: Text(""), style: ElevatedButton.styleFrom(primary: Colors.purple), )),
          ],
        ),
      ),
    );
  }
}
