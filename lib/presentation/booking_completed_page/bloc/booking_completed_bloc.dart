import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:baburam_s_application5/presentation/booking_completed_page/models/booking_completed_model.dart';
part 'booking_completed_event.dart';
part 'booking_completed_state.dart';

class BookingCompletedBloc
    extends Bloc<BookingCompletedEvent, BookingCompletedState> {
  BookingCompletedBloc(BookingCompletedState initialState)
      : super(initialState) {
    on<BookingCompletedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingCompletedInitialEvent event,
    Emitter<BookingCompletedState> emit,
  ) async {
    emit(state.copyWith(
      statussuccessController: TextEditingController(),
      statussuccessOneController: TextEditingController(),
    ));
  }
}
