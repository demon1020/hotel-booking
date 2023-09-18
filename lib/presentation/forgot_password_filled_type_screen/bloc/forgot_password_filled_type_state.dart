// ignore_for_file: must_be_immutable

part of 'forgot_password_filled_type_bloc.dart';

class ForgotPasswordFilledTypeState extends Equatable {
  ForgotPasswordFilledTypeState({
    this.otpController,
    this.forgotPasswordFilledTypeModelObj,
  });

  TextEditingController? otpController;

  ForgotPasswordFilledTypeModel? forgotPasswordFilledTypeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        forgotPasswordFilledTypeModelObj,
      ];
  ForgotPasswordFilledTypeState copyWith({
    TextEditingController? otpController,
    ForgotPasswordFilledTypeModel? forgotPasswordFilledTypeModelObj,
  }) {
    return ForgotPasswordFilledTypeState(
      otpController: otpController ?? this.otpController,
      forgotPasswordFilledTypeModelObj: forgotPasswordFilledTypeModelObj ??
          this.forgotPasswordFilledTypeModelObj,
    );
  }
}
