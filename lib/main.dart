import 'package:bloc_counter_app/counter_bloc.dart';
import 'package:bloc_counter_app/counter_withenumclass_bloc.dart';
import 'package:bloc_counter_app/screen/counter_bloc_class_screen.dart';
import 'package:bloc_counter_app/screen/counter_bloc_enum_screen.dart';
import 'package:bloc_counter_app/screen/counter_cubit_screen.dart';
import 'package:bloc_counter_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
      MaterialApp(
          home: const MyApp(),
          theme: ThemeData(
            primaryColor: primaryColorCustom,
            colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColorCustom),
          ),
          title: 'Flutter Bloc Learning'),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bloc - Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColorCustom,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterBlocClassScreen()),
                );
              },
              child: const Text("Bloc Event using ClassEvent"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColorCustom,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterBlocEnumScreen()),
                );
              },
              child: const Text("Bloc Event using EnumEvent"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColorCustom,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterCubitScreen()),
                );
              },
              child: const Text("Implement With Cubit"),
            ),
          ],
        ),
      ),
    );
  }
}
