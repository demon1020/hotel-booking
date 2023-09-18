import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listrectanglefour1_item_model.dart';import 'package:baburam_s_application5/presentation/recently_booked_screen/models/recently_booked_model.dart';part 'recently_booked_event.dart';part 'recently_booked_state.dart';class RecentlyBookedBloc extends Bloc<RecentlyBookedEvent, RecentlyBookedState> {RecentlyBookedBloc(RecentlyBookedState initialState) : super(initialState) { on<RecentlyBookedInitialEvent>(_onInitialize); }

_onInitialize(RecentlyBookedInitialEvent event, Emitter<RecentlyBookedState> emit, ) async  { emit(state.copyWith(recentlyBookedModelObj: state.recentlyBookedModelObj?.copyWith(listrectanglefour1ItemList: fillListrectanglefour1ItemList()))); } 
List<Listrectanglefour1ItemModel> fillListrectanglefour1ItemList() { return List.generate(5, (index) => Listrectanglefour1ItemModel()); } 
 }
