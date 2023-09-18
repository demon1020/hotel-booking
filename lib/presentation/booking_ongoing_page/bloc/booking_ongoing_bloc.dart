import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listrectangle_item_model.dart';import 'package:baburam_s_application5/presentation/booking_ongoing_page/models/booking_ongoing_model.dart';part 'booking_ongoing_event.dart';part 'booking_ongoing_state.dart';class BookingOngoingBloc extends Bloc<BookingOngoingEvent, BookingOngoingState> {BookingOngoingBloc(BookingOngoingState initialState) : super(initialState) { on<BookingOngoingInitialEvent>(_onInitialize); }

_onInitialize(BookingOngoingInitialEvent event, Emitter<BookingOngoingState> emit, ) async  { emit(state.copyWith(bookingOngoingModelObj: state.bookingOngoingModelObj?.copyWith(listrectangleItemList: fillListrectangleItemList()))); } 
List<ListrectangleItemModel> fillListrectangleItemList() { return List.generate(2, (index) => ListrectangleItemModel()); } 
 }
