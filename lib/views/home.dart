import 'package:bloc_app/bloc/bloc_counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter bloc'),
        ),
        body: BlocBuilder<CounterBloc, CounterState>(
          bloc: counterBloc,
          builder: (context, state) {
            return Column(
              children: [
                Text(
                  '${state.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
                FloatingActionButton(
                    onPressed: () {
                      counterBloc.add(const Increment());
                    },
                    child: const Icon(Icons.add)),
                FloatingActionButton(
                    onPressed: () {
                      counterBloc.add(const IncrementBy(by: 5));
                    },
                    child: const Icon(Icons.filter_5)),
              ],
            );
          },
        ));
  }
}
