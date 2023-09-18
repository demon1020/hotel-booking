import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:baburam_s_application5/presentation/rate_hotel_bottomsheet/models/rate_hotel_model.dart';
part 'rate_hotel_event.dart';
part 'rate_hotel_state.dart';

class RateHotelBloc extends Bloc<RateHotelEvent, RateHotelState> {
  RateHotelBloc(RateHotelState initialState) : super(initialState) {
    on<RateHotelInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RateHotelInitialEvent event,
    Emitter<RateHotelState> emit,
  ) async {}
}
