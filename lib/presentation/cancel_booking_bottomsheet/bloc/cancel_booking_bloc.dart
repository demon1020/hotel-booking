import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/cancel_booking_bottomsheet/models/cancel_booking_model.dart';part 'cancel_booking_event.dart';part 'cancel_booking_state.dart';class CancelBookingBloc extends Bloc<CancelBookingEvent, CancelBookingState> {CancelBookingBloc(CancelBookingState initialState) : super(initialState) { on<CancelBookingInitialEvent>(_onInitialize); }

_onInitialize(CancelBookingInitialEvent event, Emitter<CancelBookingState> emit, ) async  {  } 
 }
