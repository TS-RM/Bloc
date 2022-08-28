import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(counterValue: 0)) {
    on<CounterEvent>((state, emit) {});
  }
}

abstract class CounterEvent extends Equatable {}

abstract class CounterState extends Equatable {
  const CounterState();
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {
  int counterValue;
  CounterInitial({required this.counterValue});
  @override
  List<Object> get props => [counterValue];
}
