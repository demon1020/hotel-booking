// ignore_for_file: must_be_immutable

part of 'booking_ongoing_tab_container_bloc.dart';

@immutable
abstract class BookingOngoingTabContainerEvent extends Equatable {}

class BookingOngoingTabContainerInitialEvent
    extends BookingOngoingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
