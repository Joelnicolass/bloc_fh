part of 'counter_bloc.dart';

class CounterState extends Equatable {
  String? error;
  int value = 0;

  CounterState({required this.value, this.error});

// copyWith
  CounterState copyWith({int? value, String? error}) {
    return CounterState(
      value: value ?? this.value,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [
        value,
      ];
}
