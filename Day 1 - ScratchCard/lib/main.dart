import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scratcher(
          brushSize: 40,
          threshold: 50,
          // color: Colors.red,
          image: Image.asset('assets/scratchBanner.png'),
          onChange: (value) {},
          onThreshold: () => print("Threshold reached, you won!"),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/prize.png')
              )
            ),
          ),
        ),
      ),
    );
  }
}
