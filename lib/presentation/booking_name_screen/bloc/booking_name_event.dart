// ignore_for_file: must_be_immutable

part of 'booking_name_bloc.dart';

@immutable
abstract class BookingNameEvent extends Equatable {}

class BookingNameInitialEvent extends BookingNameEvent {
  @override
  List<Object?> get props => [];
}
