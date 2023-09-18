// ignore_for_file: must_be_immutable

part of 'sign_up_blank_bloc.dart';

class SignUpBlankState extends Equatable {
  SignUpBlankState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signUpBlankModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpBlankModel? signUpBlankModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        isCheckbox,
        signUpBlankModelObj,
      ];
  SignUpBlankState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignUpBlankModel? signUpBlankModelObj,
  }) {
    return SignUpBlankState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signUpBlankModelObj: signUpBlankModelObj ?? this.signUpBlankModelObj,
    );
  }
}
