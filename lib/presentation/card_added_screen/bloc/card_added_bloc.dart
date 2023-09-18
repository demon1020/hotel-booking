import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/card_added_item_model.dart';import 'package:baburam_s_application5/presentation/card_added_screen/models/card_added_model.dart';part 'card_added_event.dart';part 'card_added_state.dart';class CardAddedBloc extends Bloc<CardAddedEvent, CardAddedState> {CardAddedBloc(CardAddedState initialState) : super(initialState) { on<CardAddedInitialEvent>(_onInitialize); }

_onInitialize(CardAddedInitialEvent event, Emitter<CardAddedState> emit, ) async  { emit(state.copyWith(cardAddedModelObj: state.cardAddedModelObj?.copyWith(cardAddedItemList: fillCardAddedItemList()))); } 
List<CardAddedItemModel> fillCardAddedItemList() { return List.generate(3, (index) => CardAddedItemModel()); } 
 }
