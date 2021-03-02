import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CricketScore extends StatefulWidget {
  @override
  _CricketScoreState createState() => _CricketScoreState();
}

class _CricketScoreState extends State<CricketScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Cricket Score Tile"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network('https://ssl.gstatic.com/onebox/media/sports/logos/mlXOOB9HXxLpoeS2dHSgGA_96x96.png'),
                Text(
                  "VS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                  ),
                ),
                Image.network('https://ssl.gstatic.com/onebox/media/sports/logos/DTqIL8Ba3KIuxGkpXw5ayA_96x96.png')
              ],
            ),
            SizedBox(height: 20,),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              isFirst: true,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 35,
                indicator: Container(
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Center(
                    child: Text(
                      "W",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "BOWLED !! Wicket of the very first delivery of the match. Knocked off the middle stump."
                      "Wonderful delivery by Ishant Sharma.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 35,
                indicator: Container(
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text(
                      ".",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Dot Ball !! The batsman decides to leave the ball to the keeper's hands.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 35,
                indicator: Container(
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Takes a single off the 3rd delivery. It was a wonderful delivery coming in and the batsman hesitated at first to play a drive.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 35,
                indicator: Container(
                  decoration: BoxDecoration(
                      color: Colors.amber
                  ),
                  child: Center(
                    child: Text(
                      "4",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Thats a four !! There was no fault in the delivery, the batsman played the drive exquisitely.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 35,
                indicator: Container(
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                  child: Center(
                    child: Text(
                      "W",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Edged !! and Caught behind. What a delivery by Ishant. The batsman didnt see that coming.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 35,
                indicator: Container(
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  child: Center(
                    child: Text(
                      ".",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Dot Ball to end the over. A wonderful over comes to an end. England 5 for 2.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),

            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(
                height: 35,
                width: 100,
                drawGap: true,
                indicatorXY: 0.3,
                indicator: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child: Center(
                    child: Text(
                      "End of Over 1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
