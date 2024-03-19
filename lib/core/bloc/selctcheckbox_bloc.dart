import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selctcheckbox_event.dart';
part 'selctcheckbox_state.dart';
part 'selctcheckbox_bloc.freezed.dart';

class SelctcheckboxBloc extends Bloc<SelctcheckboxEvent, SelctcheckboxState> {
  SelctcheckboxBloc()
      : super(SelctcheckboxState.initial(
            first: false, second: false, third: false)) {
    on<_FirstCheck>((event, emit) {
      emit(state.copyWith(first: !state.first));
    });
    on<_SecondCheck>((event, emit) {
      emit(state.copyWith(second: !state.second));
    });
    on<_ThirdCheck>((event, emit) {
      emit(state.copyWith(third: !state.third));
    });
  }
}
