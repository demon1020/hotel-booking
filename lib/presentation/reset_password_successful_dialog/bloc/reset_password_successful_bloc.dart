import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/reset_password_successful_dialog/models/reset_password_successful_model.dart';part 'reset_password_successful_event.dart';part 'reset_password_successful_state.dart';class ResetPasswordSuccessfulBloc extends Bloc<ResetPasswordSuccessfulEvent, ResetPasswordSuccessfulState> {ResetPasswordSuccessfulBloc(ResetPasswordSuccessfulState initialState) : super(initialState) { on<ResetPasswordSuccessfulInitialEvent>(_onInitialize); }

_onInitialize(ResetPasswordSuccessfulInitialEvent event, Emitter<ResetPasswordSuccessfulState> emit, ) async  {  } 
 }
