// ignore_for_file: must_be_immutable

part of 'cancel_booking_bloc.dart';

class CancelBookingState extends Equatable {
  CancelBookingState({this.cancelBookingModelObj});

  CancelBookingModel? cancelBookingModelObj;

  @override
  List<Object?> get props => [
        cancelBookingModelObj,
      ];
  CancelBookingState copyWith({CancelBookingModel? cancelBookingModelObj}) {
    return CancelBookingState(
      cancelBookingModelObj:
          cancelBookingModelObj ?? this.cancelBookingModelObj,
    );
  }
}
