import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CounterEvent {}
class CounterIncrementPressed extends CounterEvent {}
class CounterDecrementPressed extends CounterEvent {}
class CounterResetPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      emit(state + 1);
    });

    on<CounterDecrementPressed>((event, emit) {
      emit(state - 1);
    });

    on<CounterResetPressed>((event, emit) {
      emit(0);
    });
  }
}
