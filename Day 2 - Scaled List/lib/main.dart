import 'package:flutter/material.dart';
import 'package:scaled_list/scaled_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaled List Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> images = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
  ];

  List<Color> colors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.amber,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaledList(
          itemCount: images.length,
          itemColor: (index) => colors[index],
          itemBuilder: (index,selectedIndex) {
            return Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/${images[index]}'),
                  )
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
