// ignore_for_file: must_be_immutable

part of 'fill_profile_bloc.dart';

class FillProfileState extends Equatable {
  FillProfileState({
    this.fullnameController,
    this.nicknameController,
    this.dateofbirthController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.fillProfileModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? nicknameController;

  TextEditingController? dateofbirthController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  FillProfileModel? fillProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        fullnameController,
        nicknameController,
        dateofbirthController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        selectedCountry,
        fillProfileModelObj,
      ];
  FillProfileState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? nicknameController,
    TextEditingController? dateofbirthController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    FillProfileModel? fillProfileModelObj,
  }) {
    return FillProfileState(
      fullnameController: fullnameController ?? this.fullnameController,
      nicknameController: nicknameController ?? this.nicknameController,
      dateofbirthController:
          dateofbirthController ?? this.dateofbirthController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      fillProfileModelObj: fillProfileModelObj ?? this.fillProfileModelObj,
    );
  }
}
