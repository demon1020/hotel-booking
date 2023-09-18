// ignore_for_file: must_be_immutable

part of 'booking_completed_bloc.dart';

@immutable
abstract class BookingCompletedEvent extends Equatable {}

class BookingCompletedInitialEvent extends BookingCompletedEvent {
  @override
  List<Object?> get props => [];
}
