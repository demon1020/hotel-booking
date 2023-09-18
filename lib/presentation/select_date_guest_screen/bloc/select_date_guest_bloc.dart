import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:table_calendar/table_calendar.dart';import 'package:baburam_s_application5/presentation/select_date_guest_screen/models/select_date_guest_model.dart';part 'select_date_guest_event.dart';part 'select_date_guest_state.dart';class SelectDateGuestBloc extends Bloc<SelectDateGuestEvent, SelectDateGuestState> {SelectDateGuestBloc(SelectDateGuestState initialState) : super(initialState) { on<SelectDateGuestInitialEvent>(_onInitialize); }

_onInitialize(SelectDateGuestInitialEvent event, Emitter<SelectDateGuestState> emit, ) async  { emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn)); } 
 }
