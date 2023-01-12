import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class CounterState {
  int numberValue;

  CounterState(this.numberValue);
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {

    on<CounterEvent>((event, emit) {
      if (event is DecrementCounterEvent) {
        emit(CounterState(state.numberValue--));
      } else {
        emit(CounterState(state.numberValue++));
      }
    });
  }
}
