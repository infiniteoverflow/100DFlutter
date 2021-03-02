import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class FoodDelivery extends StatefulWidget {
  @override
  _FoodDeliveryState createState() => _FoodDeliveryState();
}

class _FoodDeliveryState extends State<FoodDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Food Delivery Tile"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          TimelineTile(
            isFirst: true,
            alignment: TimelineAlign.manual,
            lineXY: 0.2,
            endChild: ListTile(
              leading: Image.asset('assets/acceptance.png'),
              title: Text(
                "Restaurant Accepted your Order.",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            indicatorStyle: IndicatorStyle(
              height: 40,
              width: 40,
              indicator: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ),
          ),

          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.2,
            endChild: ListTile(
              leading: Image.asset('assets/prepare.png'),
              title: Text(
                "Restaurant has prepared your food.",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            indicatorStyle: IndicatorStyle(
              height: 40,
              width: 40,
              indicator: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ),
          ),

          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.2,
            endChild: ListTile(
              leading: Image.asset('assets/delivery.png'),
              title: Text(
                "The Order has left for delivery.",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            indicatorStyle: IndicatorStyle(
              height: 40,
              width: 40,
              indicator: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            ),
          ),

          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.2,
            isLast: true,
            endChild: ListTile(
              leading: Image.asset('assets/eat.png'),
              title: Text(
                "Enjoy your delicious food !!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            indicatorStyle: IndicatorStyle(
                height: 40,
                width: 40,
                indicator: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.done,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
