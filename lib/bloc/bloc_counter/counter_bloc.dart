import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(value: 0)) {
    on<Increment>(_increment);
    on<Decrement>((event, emit) {});
    on<IncrementBy>(_incrementBy);
    on<DecrementBy>((event, emit) {});
  }

  _increment(Increment event, Emitter<CounterState> emit) {
    print('asdas');
    emit(state.copyWith(
      value: state.value + 1,
    ));
  }

  _incrementBy(IncrementBy event, Emitter<CounterState> emit) {
    emit(state.copyWith(
      value: state.value + event.by,
    ));
  }
}
