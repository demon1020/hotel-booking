import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:baburam_s_application5/presentation/booking_cancelled_page/models/booking_cancelled_model.dart';
part 'booking_cancelled_event.dart';
part 'booking_cancelled_state.dart';

class BookingCancelledBloc
    extends Bloc<BookingCancelledEvent, BookingCancelledState> {
  BookingCancelledBloc(BookingCancelledState initialState)
      : super(initialState) {
    on<BookingCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingCancelledInitialEvent event,
    Emitter<BookingCancelledState> emit,
  ) async {
    emit(state.copyWith(
      statuserrorcompController: TextEditingController(),
      statuserrorcompOneController: TextEditingController(),
    ));
  }
}
