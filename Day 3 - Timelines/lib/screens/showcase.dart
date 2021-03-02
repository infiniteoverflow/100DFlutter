import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ShowcaseTile extends StatefulWidget {

  @override
  _ShowcaseTileState createState() => _ShowcaseTileState();
}

class _ShowcaseTileState extends State<ShowcaseTile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Showcase Tile"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index) {
            return TimelineTile(
              isFirst: index == 0,
              isLast: index == 9,
              axis: TimelineAxis.vertical,
              lineXY: 0.1,
              alignment: TimelineAlign.manual,
              indicatorStyle: IndicatorStyle(
                  width: 40,
                  height: 40,
                  drawGap: true,
                  indicator: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.black,
                          width: 4,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "${index+1}",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  )
              ),
              endChild: ListTile(
                title: Text("Lets Do Something ${index+1}"),
                subtitle: Text("What can we do ?"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            );
          },
        ),
      ),
    );
  }
}