// ignore_for_file: must_be_immutable

part of 'booking_cancelled_bloc.dart';

@immutable
abstract class BookingCancelledEvent extends Equatable {}

class BookingCancelledInitialEvent extends BookingCancelledEvent {
  @override
  List<Object?> get props => [];
}
