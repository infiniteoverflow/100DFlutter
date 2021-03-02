import 'package:flutter/material.dart';
import 'package:timelines/screens/cricketTile.dart';
import 'package:timelines/screens/foodDelivery.dart';
import 'package:timelines/screens/showcase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Timeline Demo',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ShowcaseTile()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 60,
                    // width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Text(
                        "Showcase Tile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CricketScore()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Container(
                    height: 60,
                    // width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Text(
                        "Cricket Score Tile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => FoodDelivery()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                  child: Container(
                    height: 60,
                    // width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Text(
                        "Food Delivery Tile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
