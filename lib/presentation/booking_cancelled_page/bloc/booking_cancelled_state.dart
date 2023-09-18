// ignore_for_file: must_be_immutable

part of 'booking_cancelled_bloc.dart';

class BookingCancelledState extends Equatable {
  BookingCancelledState({
    this.statuserrorcompController,
    this.statuserrorcompOneController,
    this.bookingCancelledModelObj,
  });

  TextEditingController? statuserrorcompController;

  TextEditingController? statuserrorcompOneController;

  BookingCancelledModel? bookingCancelledModelObj;

  @override
  List<Object?> get props => [
        statuserrorcompController,
        statuserrorcompOneController,
        bookingCancelledModelObj,
      ];
  BookingCancelledState copyWith({
    TextEditingController? statuserrorcompController,
    TextEditingController? statuserrorcompOneController,
    BookingCancelledModel? bookingCancelledModelObj,
  }) {
    return BookingCancelledState(
      statuserrorcompController:
          statuserrorcompController ?? this.statuserrorcompController,
      statuserrorcompOneController:
          statuserrorcompOneController ?? this.statuserrorcompOneController,
      bookingCancelledModelObj:
          bookingCancelledModelObj ?? this.bookingCancelledModelObj,
    );
  }
}
