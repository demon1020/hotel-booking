// ignore_for_file: must_be_immutable

part of 'view_ticket_bloc.dart';

@immutable
abstract class ViewTicketEvent extends Equatable {}

class ViewTicketInitialEvent extends ViewTicketEvent {
  @override
  List<Object?> get props => [];
}
