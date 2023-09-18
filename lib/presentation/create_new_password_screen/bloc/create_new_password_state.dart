// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.confirmpasswordinputController,
    this.confirmpasswordinputOneController,
    this.isCheckbox = false,
    this.createNewPasswordModelObj,
  });

  TextEditingController? confirmpasswordinputController;

  TextEditingController? confirmpasswordinputOneController;

  CreateNewPasswordModel? createNewPasswordModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        confirmpasswordinputController,
        confirmpasswordinputOneController,
        isCheckbox,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? confirmpasswordinputController,
    TextEditingController? confirmpasswordinputOneController,
    bool? isCheckbox,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      confirmpasswordinputController:
          confirmpasswordinputController ?? this.confirmpasswordinputController,
      confirmpasswordinputOneController: confirmpasswordinputOneController ??
          this.confirmpasswordinputOneController,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
