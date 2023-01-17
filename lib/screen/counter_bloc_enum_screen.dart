import 'package:bloc_counter_app/counter_bloc.dart';
import 'package:bloc_counter_app/counter_withenumclass_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// * Using Event Kind Enum from bloc
class CounterBlocEnumScreen extends StatelessWidget {
  const CounterBlocEnumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implement Bloc Using Event(Enum)'),
      ),
      body: Center(
        child: BlocProvider(
          create: (context) => CounterBloc2(),
          child: BlocBuilder<CounterBloc2, CounterState2>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${state.numberValue}",
                    style: const TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Increment',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Decrement',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
