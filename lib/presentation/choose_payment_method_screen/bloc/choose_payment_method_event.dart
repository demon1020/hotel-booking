// ignore_for_file: must_be_immutable

part of 'choose_payment_method_bloc.dart';

@immutable
abstract class ChoosePaymentMethodEvent extends Equatable {}

class ChoosePaymentMethodInitialEvent extends ChoosePaymentMethodEvent {
  @override
  List<Object?> get props => [];
}
