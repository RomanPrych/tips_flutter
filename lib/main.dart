import 'package:flutter/material.dart';

class CounterModel {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }

  void decrement() {
    _count--;
  }
}



class CounterView extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  CounterView({
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count:',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '$count',
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: onIncrement,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: onDecrement,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class CounterController extends StatefulWidget {
  @override
  _CounterControllerState createState() => _CounterControllerState();
}

class _CounterControllerState extends State<CounterController> {
  final CounterModel _model = CounterModel();

  void _increment() {
    setState(() {
      _model.increment();
    });
  }

  void _decrement() {
    setState(() {
      _model.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterView(
      count: _model.count,
      onIncrement: _increment,
      onDecrement: _decrement,
    );
  }
}

// Віджет MaterialApp
void main() {
  runApp(MaterialApp(
    home: CounterController(),
  ));
}