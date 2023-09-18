// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  SignInState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signInModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignInModel? signInModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        isCheckbox,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
