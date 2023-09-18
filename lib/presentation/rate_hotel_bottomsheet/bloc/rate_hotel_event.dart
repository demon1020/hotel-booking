// ignore_for_file: must_be_immutable

part of 'rate_hotel_bloc.dart';

@immutable
abstract class RateHotelEvent extends Equatable {}

class RateHotelInitialEvent extends RateHotelEvent {
  @override
  List<Object?> get props => [];
}
