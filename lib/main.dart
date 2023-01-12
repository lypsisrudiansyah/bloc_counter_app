import 'package:flutter/material.dart';

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
      title: 'Flutter Bloc Learning',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bloc Learning'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Initial Value',
                style: TextStyle(
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
                      'Decrement',
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
                      'Increment',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
