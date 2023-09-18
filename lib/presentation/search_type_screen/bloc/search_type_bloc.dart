import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsizemediumtypef1_item_model.dart';
import 'package:baburam_s_application5/presentation/search_type_screen/models/search_type_model.dart';
part 'search_type_event.dart';
part 'search_type_state.dart';

class SearchTypeBloc extends Bloc<SearchTypeEvent, SearchTypeState> {
  SearchTypeBloc(SearchTypeState initialState) : super(initialState) {
    on<SearchTypeInitialEvent>(_onInitialize);
  }

  List<Listsizemediumtypef1ItemModel> fillListsizemediumtypef1ItemList() {
    return List.generate(5, (index) => Listsizemediumtypef1ItemModel());
  }

  _onInitialize(
    SearchTypeInitialEvent event,
    Emitter<SearchTypeState> emit,
  ) async {
    emit(state.copyWith(
      searchbarController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTypeModelObj: state.searchTypeModelObj?.copyWith(
      listsizemediumtypef1ItemList: fillListsizemediumtypef1ItemList(),
    )));
  }
}
