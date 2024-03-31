import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';

class CountScreenWidthBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Count Screen with Bloc')),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$count', style: const TextStyle(fontSize: 40)),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () => BlocProvider.of<CounterBloc>(context).add(CounterDecrementPressed()),
                    ),
                    IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: () => BlocProvider.of<CounterBloc>(context).add(CounterResetPressed()),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () => BlocProvider.of<CounterBloc>(context).add(CounterIncrementPressed()),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}