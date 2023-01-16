import 'package:flutter_bloc/flutter_bloc.dart';


// * Make Event using enum
enum CounterEvent2 {
  increment,
  decrement
}

class CounterBloc2 extends Bloc<CounterEvent2, int> {
  CounterBloc2() : super(0) {
    on<CounterEvent2>((event, emit) {
      if (event == CounterEvent2.decrement) {
        emit(state - 1);
      } else {
        emit(state + 1);
      }
    });
  }
}
