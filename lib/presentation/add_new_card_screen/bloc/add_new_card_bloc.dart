import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/add_new_card_screen/models/add_new_card_model.dart';part 'add_new_card_event.dart';part 'add_new_card_state.dart';class AddNewCardBloc extends Bloc<AddNewCardEvent, AddNewCardState> {AddNewCardBloc(AddNewCardState initialState) : super(initialState) { on<AddNewCardInitialEvent>(_onInitialize); }

_onInitialize(AddNewCardInitialEvent event, Emitter<AddNewCardState> emit, ) async  { emit(state.copyWith(cardholdernameController: TextEditingController(), cardnumberController: TextEditingController(), expirydateController: TextEditingController(), cvvController: TextEditingController())); } 
 }
