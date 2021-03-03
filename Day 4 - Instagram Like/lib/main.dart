import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Like Demo',
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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _colorAnimation;
  Animation _sizeAnimation;
  Animation _opacityAnimation;

  bool isRed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: Colors.grey,
      end: Colors.white
    ).animate(_controller);

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(
          tween: Tween<double>(
            begin: 70,
            end: 120,
          ),
          weight: 100
        ),
        TweenSequenceItem(
            tween: Tween<double>(
              begin: 120,
              end: 120,
            ),
            weight: 70
        ),
      ]
    ).animate(_controller);

    _opacityAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(
          tween: Tween<double>(begin: 0,end:1),
          weight: 100
        ),
        TweenSequenceItem(
            tween: Tween<double>(begin: 1,end:1),
            weight: 50
        ),
      ]
    ).animate(_controller);

    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) _controller.reverse();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            _controller.forward();
          },
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context,_) {
                return Opacity(
                  opacity: _opacityAnimation.value,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15,right: 8),
                    child: Icon(
                      Icons.favorite,
                      color: _colorAnimation.value,
                      size: _sizeAnimation.value,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
