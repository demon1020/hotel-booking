// ignore_for_file: must_be_immutable

part of 'booking_completed_bloc.dart';

class BookingCompletedState extends Equatable {
  BookingCompletedState({
    this.statussuccessController,
    this.statussuccessOneController,
    this.bookingCompletedModelObj,
  });

  TextEditingController? statussuccessController;

  TextEditingController? statussuccessOneController;

  BookingCompletedModel? bookingCompletedModelObj;

  @override
  List<Object?> get props => [
        statussuccessController,
        statussuccessOneController,
        bookingCompletedModelObj,
      ];
  BookingCompletedState copyWith({
    TextEditingController? statussuccessController,
    TextEditingController? statussuccessOneController,
    BookingCompletedModel? bookingCompletedModelObj,
  }) {
    return BookingCompletedState(
      statussuccessController:
          statussuccessController ?? this.statussuccessController,
      statussuccessOneController:
          statussuccessOneController ?? this.statussuccessOneController,
      bookingCompletedModelObj:
          bookingCompletedModelObj ?? this.bookingCompletedModelObj,
    );
  }
}
