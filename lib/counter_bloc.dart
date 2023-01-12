import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event is DecrementCounterEvent) {
        emit(state - 1);
      } else {
        emit(state + 1);
      }
    });
  }
}
