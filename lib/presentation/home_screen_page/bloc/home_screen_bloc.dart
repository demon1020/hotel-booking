import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/options_item_model.dart';import '../models/hotels_item_model.dart';import '../models/listrectanglefour_item_model.dart';import 'package:baburam_s_application5/presentation/home_screen_page/models/home_screen_model.dart';part 'home_screen_event.dart';part 'home_screen_state.dart';class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {HomeScreenBloc(HomeScreenState initialState) : super(initialState) { on<HomeScreenInitialEvent>(_onInitialize); }

List<OptionsItemModel> fillOptionsItemList() { return List.generate(4, (index) => OptionsItemModel()); } 
List<HotelsItemModel> fillHotelsItemList() { return List.generate(2, (index) => HotelsItemModel()); } 
List<ListrectanglefourItemModel> fillListrectanglefourItemList() { return List.generate(5, (index) => ListrectanglefourItemModel()); } 
_onInitialize(HomeScreenInitialEvent event, Emitter<HomeScreenState> emit, ) async  { emit(state.copyWith(searchBarController: TextEditingController())); emit(state.copyWith(homeScreenModelObj: state.homeScreenModelObj?.copyWith(optionsItemList: fillOptionsItemList(), hotelsItemList: fillHotelsItemList(), listrectanglefourItemList: fillListrectanglefourItemList()))); } 
 }
