import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listcheckin_item_model.dart';import 'package:baburam_s_application5/presentation/confirm_payment_screen/models/confirm_payment_model.dart';part 'confirm_payment_event.dart';part 'confirm_payment_state.dart';class ConfirmPaymentBloc extends Bloc<ConfirmPaymentEvent, ConfirmPaymentState> {ConfirmPaymentBloc(ConfirmPaymentState initialState) : super(initialState) { on<ConfirmPaymentInitialEvent>(_onInitialize); }

_onInitialize(ConfirmPaymentInitialEvent event, Emitter<ConfirmPaymentState> emit, ) async  { emit(state.copyWith(confirmPaymentModelObj: state.confirmPaymentModelObj?.copyWith(listcheckinItemList: fillListcheckinItemList()))); } 
List<ListcheckinItemModel> fillListcheckinItemList() { return List.generate(2, (index) => ListcheckinItemModel()); } 
 }
