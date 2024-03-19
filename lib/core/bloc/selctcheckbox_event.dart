part of 'selctcheckbox_bloc.dart';

@freezed
class SelctcheckboxEvent with _$SelctcheckboxEvent {
  const factory SelctcheckboxEvent.firstcheck() = _FirstCheck;
    const factory SelctcheckboxEvent.secondcheck() = _SecondCheck;
      const factory SelctcheckboxEvent.thirdcheck() = _ThirdCheck;


}