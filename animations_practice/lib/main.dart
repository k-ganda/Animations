import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation_prac',
      home: AnimationScreen(),
    );
  }
}

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _width = 200;
  double _height = 200;
  bool _isExpanded = false;

  void _updateState() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _width = 300;
        _height = 300;
      } else {
        _width = 200;
        _height = 200;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _updateState,
              child: Text('Animate'),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 900),
              width: _width,
              height: _height,
              color: Colors.pink,
              child: Center(
                child: Text(
                  "Hey Friends",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
