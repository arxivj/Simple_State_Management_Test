import 'package:flutter/material.dart';

class CountScreenWidthStateful extends StatefulWidget {
  const CountScreenWidthStateful({super.key});
  @override
  _CountScreenWidthStatefulState createState() => _CountScreenWidthStatefulState();
}
class _CountScreenWidthStatefulState extends State<CountScreenWidthStateful> {
  int _count = 0;

  void _increment() => setState(() => _count++);
  void _decrement() => setState(() => _count--);
  void _reset() => setState(() => _count = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Count Screen with Stateful')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_count', style: const TextStyle(fontSize: 40)),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(icon: const Icon(Icons.remove), onPressed: _decrement),
                IconButton(icon: const Icon(Icons.refresh), onPressed: _reset),
                IconButton(icon: const Icon(Icons.add), onPressed: _increment),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
