import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listvolume_item_model.dart';import 'package:baburam_s_application5/presentation/forgot_password_screen/models/forgot_password_model.dart';part 'forgot_password_event.dart';part 'forgot_password_state.dart';class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {ForgotPasswordBloc(ForgotPasswordState initialState) : super(initialState) { on<ForgotPasswordInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordInitialEvent event, Emitter<ForgotPasswordState> emit, ) async  { emit(state.copyWith(forgotPasswordModelObj: state.forgotPasswordModelObj?.copyWith(listvolumeItemList: fillListvolumeItemList()))); } 
List<ListvolumeItemModel> fillListvolumeItemList() { return List.generate(2, (index) => ListvolumeItemModel()); } 
 }
