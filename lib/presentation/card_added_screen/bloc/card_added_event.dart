// ignore_for_file: must_be_immutable

part of 'card_added_bloc.dart';

@immutable
abstract class CardAddedEvent extends Equatable {}

class CardAddedInitialEvent extends CardAddedEvent {
  @override
  List<Object?> get props => [];
}
