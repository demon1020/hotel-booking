// ignore_for_file: must_be_immutable

part of 'select_date_guest_bloc.dart';

@immutable
abstract class SelectDateGuestEvent extends Equatable {}

class SelectDateGuestInitialEvent extends SelectDateGuestEvent {
  @override
  List<Object?> get props => [];
}
