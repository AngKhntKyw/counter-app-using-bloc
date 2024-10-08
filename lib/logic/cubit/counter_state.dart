part of 'counter_cubit.dart';

class CounterState {
  final int counterValue;

  CounterState({required this.counterValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterValue': counterValue,
    };
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'] as int,
    );
  }

  @override
  String toString() => 'CounterState(counterValue: $counterValue)';
}
