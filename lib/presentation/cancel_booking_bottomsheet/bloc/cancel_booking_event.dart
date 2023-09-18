// ignore_for_file: must_be_immutable

part of 'cancel_booking_bloc.dart';

@immutable
abstract class CancelBookingEvent extends Equatable {}

class CancelBookingInitialEvent extends CancelBookingEvent {
  @override
  List<Object?> get props => [];
}
