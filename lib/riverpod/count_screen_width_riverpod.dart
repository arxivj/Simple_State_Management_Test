import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_provider.dart';

class CountScreenWidthRiverpod extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Count Screen with Riverpod')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$count', style: const TextStyle(fontSize: 40)),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () => ref.read(counterProvider.notifier).state--,
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => ref.read(counterProvider.notifier).state = 0,
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => ref.read(counterProvider.notifier).state++,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}