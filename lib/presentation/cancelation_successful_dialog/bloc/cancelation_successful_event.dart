// ignore_for_file: must_be_immutable

part of 'cancelation_successful_bloc.dart';

@immutable
abstract class CancelationSuccessfulEvent extends Equatable {}

class CancelationSuccessfulInitialEvent extends CancelationSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
