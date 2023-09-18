import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/sign_up_blank_screen/models/sign_up_blank_model.dart';part 'sign_up_blank_event.dart';part 'sign_up_blank_state.dart';class SignUpBlankBloc extends Bloc<SignUpBlankEvent, SignUpBlankState> {SignUpBlankBloc(SignUpBlankState initialState) : super(initialState) { on<SignUpBlankInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpBlankState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignUpBlankState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_onInitialize(SignUpBlankInitialEvent event, Emitter<SignUpBlankState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true, isCheckbox: false)); } 
 }
