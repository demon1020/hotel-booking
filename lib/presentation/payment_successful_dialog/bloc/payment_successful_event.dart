// ignore_for_file: must_be_immutable

part of 'payment_successful_bloc.dart';

@immutable
abstract class PaymentSuccessfulEvent extends Equatable {}

class PaymentSuccessfulInitialEvent extends PaymentSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
