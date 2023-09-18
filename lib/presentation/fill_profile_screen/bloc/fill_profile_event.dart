// ignore_for_file: must_be_immutable

part of 'fill_profile_bloc.dart';

@immutable
abstract class FillProfileEvent extends Equatable {}

class FillProfileInitialEvent extends FillProfileEvent {
  @override
  List<Object?> get props => [];
}

class CreateRegisterEvent extends FillProfileEvent {
  CreateRegisterEvent({
    required this.onCreateRegisterEventSuccess,
    required this.onCreateRegisterEventError,
  });

  Function onCreateRegisterEventSuccess;

  Function onCreateRegisterEventError;

  @override
  List<Object?> get props => [
        onCreateRegisterEventSuccess,
        onCreateRegisterEventError,
      ];
}

///event for change country code
class ChangeCountryEvent extends FillProfileEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends FillProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
