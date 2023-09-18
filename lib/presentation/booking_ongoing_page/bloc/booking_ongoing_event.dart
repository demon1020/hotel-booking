// ignore_for_file: must_be_immutable

part of 'booking_ongoing_bloc.dart';

@immutable
abstract class BookingOngoingEvent extends Equatable {}

class BookingOngoingInitialEvent extends BookingOngoingEvent {
  @override
  List<Object?> get props => [];
}
