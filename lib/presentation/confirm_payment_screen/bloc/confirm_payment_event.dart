// ignore_for_file: must_be_immutable

part of 'confirm_payment_bloc.dart';

@immutable
abstract class ConfirmPaymentEvent extends Equatable {}

class ConfirmPaymentInitialEvent extends ConfirmPaymentEvent {
  @override
  List<Object?> get props => [];
}
