import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/create_new_password_screen/models/create_new_password_model.dart';part 'create_new_password_event.dart';part 'create_new_password_state.dart';class CreateNewPasswordBloc extends Bloc<CreateNewPasswordEvent, CreateNewPasswordState> {CreateNewPasswordBloc(CreateNewPasswordState initialState) : super(initialState) { on<CreateNewPasswordInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<CreateNewPasswordState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_onInitialize(CreateNewPasswordInitialEvent event, Emitter<CreateNewPasswordState> emit, ) async  { emit(state.copyWith(confirmpasswordinputController: TextEditingController(), confirmpasswordinputOneController: TextEditingController(), isCheckbox: false)); } 
 }
