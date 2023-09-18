// ignore_for_file: must_be_immutable

part of 'choose_payment_method_bloc.dart';

class ChoosePaymentMethodState extends Equatable {
  ChoosePaymentMethodState({this.choosePaymentMethodModelObj});

  ChoosePaymentMethodModel? choosePaymentMethodModelObj;

  @override
  List<Object?> get props => [
        choosePaymentMethodModelObj,
      ];
  ChoosePaymentMethodState copyWith(
      {ChoosePaymentMethodModel? choosePaymentMethodModelObj}) {
    return ChoosePaymentMethodState(
      choosePaymentMethodModelObj:
          choosePaymentMethodModelObj ?? this.choosePaymentMethodModelObj,
    );
  }
}
