// ignore_for_file: must_be_immutable

part of 'forgot_password_filled_type_bloc.dart';

@immutable
abstract class ForgotPasswordFilledTypeEvent extends Equatable {}

class ForgotPasswordFilledTypeInitialEvent
    extends ForgotPasswordFilledTypeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ForgotPasswordFilledTypeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
