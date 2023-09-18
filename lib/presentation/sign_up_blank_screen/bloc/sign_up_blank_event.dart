// ignore_for_file: must_be_immutable

part of 'sign_up_blank_bloc.dart';

@immutable
abstract class SignUpBlankEvent extends Equatable {}

class SignUpBlankInitialEvent extends SignUpBlankEvent {
  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends SignUpBlankEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignUpBlankEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignUpBlankEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBoxEvent extends SignUpBlankEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
