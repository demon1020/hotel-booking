// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

class EditProfileState extends Equatable {
  EditProfileState({
    this.statusfilltypedController,
    this.firstnameController,
    this.dobController,
    this.emailController,
    this.phoneNumberController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedCountry,
    this.editProfileModelObj,
  });

  TextEditingController? statusfilltypedController;

  TextEditingController? firstnameController;

  TextEditingController? dobController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  EditProfileModel? editProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        statusfilltypedController,
        firstnameController,
        dobController,
        emailController,
        phoneNumberController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedCountry,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? statusfilltypedController,
    TextEditingController? firstnameController,
    TextEditingController? dobController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    Country? selectedCountry,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      statusfilltypedController:
          statusfilltypedController ?? this.statusfilltypedController,
      firstnameController: firstnameController ?? this.firstnameController,
      dobController: dobController ?? this.dobController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
