import 'package:arq_mvvm_app/screens/counter/viewmodel/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterViewModel(),
      builder: (context, _) => Scaffold(
        appBar: AppBar(
          title: const Text('Counter with MVVM'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Consumer<CounterViewModel>(
                  builder: (context, counterViewModel, child) {
                return Text('${context.watch<CounterViewModel>().count}',
                    style: Theme.of(context).textTheme.headlineMedium);
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () => {
                      context.read<CounterViewModel>().increment(),
                    },
                    tooltip: 'Increment',
                    heroTag: null,
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  FloatingActionButton(
                    onPressed: () => {
                      context.read<CounterViewModel>().decrement(),
                    },
                    tooltip: 'Decrement',
                    heroTag: null,
                    child: const Icon(Icons.remove),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
