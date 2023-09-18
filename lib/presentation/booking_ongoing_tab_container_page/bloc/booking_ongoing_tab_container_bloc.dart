import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/booking_ongoing_tab_container_page/models/booking_ongoing_tab_container_model.dart';part 'booking_ongoing_tab_container_event.dart';part 'booking_ongoing_tab_container_state.dart';class BookingOngoingTabContainerBloc extends Bloc<BookingOngoingTabContainerEvent, BookingOngoingTabContainerState> {BookingOngoingTabContainerBloc(BookingOngoingTabContainerState initialState) : super(initialState) { on<BookingOngoingTabContainerInitialEvent>(_onInitialize); }

_onInitialize(BookingOngoingTabContainerInitialEvent event, Emitter<BookingOngoingTabContainerState> emit, ) async  {  } 
 }
