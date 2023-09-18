import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listcountry_item_model.dart';import '../models/listsizemediumtypef2_item_model.dart';import '../models/liststar_item_model.dart';import 'package:baburam_s_application5/presentation/search_filter_bottomsheet/models/search_filter_model.dart';part 'search_filter_event.dart';part 'search_filter_state.dart';class SearchFilterBloc extends Bloc<SearchFilterEvent, SearchFilterState> {SearchFilterBloc(SearchFilterState initialState) : super(initialState) { on<SearchFilterInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeCheckBox1Event>(_changeCheckBox1); on<ChangeCheckBox2Event>(_changeCheckBox2); on<ChangeCheckBox3Event>(_changeCheckBox3); on<ChangeCheckBox4Event>(_changeCheckBox4); on<ChangeCheckBox5Event>(_changeCheckBox5); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SearchFilterState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_changeCheckBox1(ChangeCheckBox1Event event, Emitter<SearchFilterState> emit, ) { emit(state.copyWith(isCheckbox1: event.value)); } 
_changeCheckBox2(ChangeCheckBox2Event event, Emitter<SearchFilterState> emit, ) { emit(state.copyWith(isCheckbox2: event.value)); } 
_changeCheckBox3(ChangeCheckBox3Event event, Emitter<SearchFilterState> emit, ) { emit(state.copyWith(isCheckbox3: event.value)); } 
_changeCheckBox4(ChangeCheckBox4Event event, Emitter<SearchFilterState> emit, ) { emit(state.copyWith(isCheckbox4: event.value)); } 
_changeCheckBox5(ChangeCheckBox5Event event, Emitter<SearchFilterState> emit, ) { emit(state.copyWith(isCheckbox5: event.value)); } 
List<ListcountryItemModel> fillListcountryItemList() { return List.generate(4, (index) => ListcountryItemModel()); } 
List<Listsizemediumtypef2ItemModel> fillListsizemediumtypef2ItemList() { return List.generate(4, (index) => Listsizemediumtypef2ItemModel()); } 
List<ListstarItemModel> fillListstarItemList() { return List.generate(5, (index) => ListstarItemModel()); } 
_onInitialize(SearchFilterInitialEvent event, Emitter<SearchFilterState> emit, ) async  { emit(state.copyWith(isCheckbox: false, isCheckbox1: false, isCheckbox2: false, isCheckbox3: false, isCheckbox4: false, isCheckbox5: false)); emit(state.copyWith(searchFilterModelObj: state.searchFilterModelObj?.copyWith(listcountryItemList: fillListcountryItemList(), listsizemediumtypef2ItemList: fillListsizemediumtypef2ItemList(), liststarItemList: fillListstarItemList()))); } 
 }
