import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class AppBloc extends Bloc<Event, AppState> {
  AppBloc() : super(Initial()) {
    on<CalculateEvent>((event, emit) {
      final sum = event.num1 + event.num2;
      emit(Calculated(sum));
    });
  }
}
