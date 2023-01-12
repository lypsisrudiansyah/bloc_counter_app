import 'package:bloc_counter_app/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      title: 'Flutter Bloc Learning',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bloc Learning'),
        ),
        body: Center(
          child: BlocProvider(
            create: (context) => CounterBloc(),
            child: BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$state",
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
                          onPressed: () {
                            context.read<CounterBloc>().add(IncrementCounterEvent());
                          },
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
                          onPressed: () {
                            context.read<CounterBloc>().add(DecrementCounterEvent());
                          },
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
      ),
    );
  }
}
