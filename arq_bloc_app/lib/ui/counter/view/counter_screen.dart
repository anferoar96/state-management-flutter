import 'package:arq_bloc_app/ui/counter/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScree extends StatelessWidget {
  const CounterScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, int>(builder: (context, count) {
              return Text(
                '$count',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () =>
                      {context.read<CounterBloc>().add(CounterEvent.increment)},
                  tooltip: 'Increment',
                  heroTag: null,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 16),
                FloatingActionButton(
                  onPressed: () => {
                    context.read<CounterBloc>().add(CounterEvent.decrement),
                  },
                  tooltip: 'Decrement',
                  heroTag: null,
                  child: const Icon(Icons.remove),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
