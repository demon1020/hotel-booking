// ignore_for_file: must_be_immutable

part of 'cancelation_successful_bloc.dart';

class CancelationSuccessfulState extends Equatable {
  CancelationSuccessfulState({this.cancelationSuccessfulModelObj});

  CancelationSuccessfulModel? cancelationSuccessfulModelObj;

  @override
  List<Object?> get props => [
        cancelationSuccessfulModelObj,
      ];
  CancelationSuccessfulState copyWith(
      {CancelationSuccessfulModel? cancelationSuccessfulModelObj}) {
    return CancelationSuccessfulState(
      cancelationSuccessfulModelObj:
          cancelationSuccessfulModelObj ?? this.cancelationSuccessfulModelObj,
    );
  }
}
