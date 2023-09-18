// ignore_for_file: must_be_immutable

part of 'payment_successful_bloc.dart';

class PaymentSuccessfulState extends Equatable {
  PaymentSuccessfulState({this.paymentSuccessfulModelObj});

  PaymentSuccessfulModel? paymentSuccessfulModelObj;

  @override
  List<Object?> get props => [
        paymentSuccessfulModelObj,
      ];
  PaymentSuccessfulState copyWith(
      {PaymentSuccessfulModel? paymentSuccessfulModelObj}) {
    return PaymentSuccessfulState(
      paymentSuccessfulModelObj:
          paymentSuccessfulModelObj ?? this.paymentSuccessfulModelObj,
    );
  }
}
