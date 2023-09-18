// ignore_for_file: must_be_immutable

part of 'recently_booked_bloc.dart';

@immutable
abstract class RecentlyBookedEvent extends Equatable {}

class RecentlyBookedInitialEvent extends RecentlyBookedEvent {
  @override
  List<Object?> get props => [];
}
