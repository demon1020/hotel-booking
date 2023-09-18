// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

@immutable
abstract class EditProfileEvent extends Equatable {}

class EditProfileInitialEvent extends EditProfileEvent {
  @override
  List<Object?> get props => [];
}

class FetchMeEvent extends EditProfileEvent {
  FetchMeEvent({required this.onFetchMeEventError});

  Function onFetchMeEventError;

  @override
  List<Object?> get props => [
        onFetchMeEventError,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends EditProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change country code
class ChangeCountryEvent extends EditProfileEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends EditProfileEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
