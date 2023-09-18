import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/my_bookmarks_item_model.dart';import 'package:baburam_s_application5/presentation/my_bookmarks_screen/models/my_bookmarks_model.dart';part 'my_bookmarks_event.dart';part 'my_bookmarks_state.dart';class MyBookmarksBloc extends Bloc<MyBookmarksEvent, MyBookmarksState> {MyBookmarksBloc(MyBookmarksState initialState) : super(initialState) { on<MyBookmarksInitialEvent>(_onInitialize); }

_onInitialize(MyBookmarksInitialEvent event, Emitter<MyBookmarksState> emit, ) async  { emit(state.copyWith(myBookmarksModelObj: state.myBookmarksModelObj?.copyWith(myBookmarksItemList: fillMyBookmarksItemList()))); } 
List<MyBookmarksItemModel> fillMyBookmarksItemList() { return List.generate(6, (index) => MyBookmarksItemModel()); } 
 }
