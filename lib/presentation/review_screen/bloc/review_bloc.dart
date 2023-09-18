import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/liststar1_item_model.dart';import '../models/listellipseone_item_model.dart';import 'package:baburam_s_application5/presentation/review_screen/models/review_model.dart';part 'review_event.dart';part 'review_state.dart';class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {ReviewBloc(ReviewState initialState) : super(initialState) { on<ReviewInitialEvent>(_onInitialize); }

_onInitialize(ReviewInitialEvent event, Emitter<ReviewState> emit, ) async  { emit(state.copyWith(reviewModelObj: state.reviewModelObj?.copyWith(liststar1ItemList: fillListstar1ItemList(), listellipseoneItemList: fillListellipseoneItemList()))); } 
List<Liststar1ItemModel> fillListstar1ItemList() { return List.generate(6, (index) => Liststar1ItemModel()); } 
List<ListellipseoneItemModel> fillListellipseoneItemList() { return List.generate(5, (index) => ListellipseoneItemModel()); } 
 }
