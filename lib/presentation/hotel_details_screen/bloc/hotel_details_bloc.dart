import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/hotel_details_item_model.dart';import 'package:baburam_s_application5/presentation/hotel_details_screen/models/hotel_details_model.dart';part 'hotel_details_event.dart';part 'hotel_details_state.dart';class HotelDetailsBloc extends Bloc<HotelDetailsEvent, HotelDetailsState> {HotelDetailsBloc(HotelDetailsState initialState) : super(initialState) { on<HotelDetailsInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_onInitialize(HotelDetailsInitialEvent event, Emitter<HotelDetailsState> emit, ) async  { emit(state.copyWith(hotelDetailsModelObj: state.hotelDetailsModelObj?.copyWith(hotelDetailsItemList: fillHotelDetailsItemList(), dropdownItemList: fillDropdownItemList()))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<HotelDetailsState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<HotelDetailsItemModel> fillHotelDetailsItemList() { return List.generate(3, (index) => HotelDetailsItemModel()); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
 }
