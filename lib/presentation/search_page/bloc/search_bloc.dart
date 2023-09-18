import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listsizemediumtypef_item_model.dart';import '../models/listrectanglefour2_item_model.dart';import 'package:baburam_s_application5/presentation/search_page/models/search_model.dart';part 'search_event.dart';part 'search_state.dart';class SearchBloc extends Bloc<SearchEvent, SearchState> {SearchBloc(SearchState initialState) : super(initialState) { on<SearchInitialEvent>(_onInitialize); }

List<ListsizemediumtypefItemModel> fillListsizemediumtypefItemList() { return List.generate(5, (index) => ListsizemediumtypefItemModel()); } 
List<Listrectanglefour2ItemModel> fillListrectanglefour2ItemList() { return List.generate(4, (index) => Listrectanglefour2ItemModel()); } 
_onInitialize(SearchInitialEvent event, Emitter<SearchState> emit, ) async  { emit(state.copyWith(searchbarController: TextEditingController())); emit(state.copyWith(searchModelObj: state.searchModelObj?.copyWith(listsizemediumtypefItemList: fillListsizemediumtypefItemList(), listrectanglefour2ItemList: fillListrectanglefour2ItemList()))); } 
 }
