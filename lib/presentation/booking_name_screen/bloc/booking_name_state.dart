// ignore_for_file: must_be_immutable

part of 'booking_name_bloc.dart';

class BookingNameState extends Equatable {
  BookingNameState({
    this.statusfilltypedController,
    this.firstnameController,
    this.dobController,
    this.emailController,
    this.phoneController,
    this.bookingNameModelObj,
  });

  TextEditingController? statusfilltypedController;

  TextEditingController? firstnameController;

  TextEditingController? dobController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  BookingNameModel? bookingNameModelObj;

  @override
  List<Object?> get props => [
        statusfilltypedController,
        firstnameController,
        dobController,
        emailController,
        phoneController,
        bookingNameModelObj,
      ];
  BookingNameState copyWith({
    TextEditingController? statusfilltypedController,
    TextEditingController? firstnameController,
    TextEditingController? dobController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    BookingNameModel? bookingNameModelObj,
  }) {
    return BookingNameState(
      statusfilltypedController:
          statusfilltypedController ?? this.statusfilltypedController,
      firstnameController: firstnameController ?? this.firstnameController,
      dobController: dobController ?? this.dobController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      bookingNameModelObj: bookingNameModelObj ?? this.bookingNameModelObj,
    );
  }
}
