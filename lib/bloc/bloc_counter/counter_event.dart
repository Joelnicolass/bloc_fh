part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {
  const Increment();
}

class Decrement extends CounterEvent {
  const Decrement();
}

class IncrementBy extends CounterEvent {
  final int by;
  const IncrementBy({required this.by});
}

class DecrementBy extends CounterEvent {}

class Reset extends CounterEvent {}
