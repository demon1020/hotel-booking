import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listreply_item_model.dart';import 'package:baburam_s_application5/presentation/choose_payment_method_screen/models/choose_payment_method_model.dart';part 'choose_payment_method_event.dart';part 'choose_payment_method_state.dart';class ChoosePaymentMethodBloc extends Bloc<ChoosePaymentMethodEvent, ChoosePaymentMethodState> {ChoosePaymentMethodBloc(ChoosePaymentMethodState initialState) : super(initialState) { on<ChoosePaymentMethodInitialEvent>(_onInitialize); }

_onInitialize(ChoosePaymentMethodInitialEvent event, Emitter<ChoosePaymentMethodState> emit, ) async  { emit(state.copyWith(choosePaymentMethodModelObj: state.choosePaymentMethodModelObj?.copyWith(listreplyItemList: fillListreplyItemList()))); } 
List<ListreplyItemModel> fillListreplyItemList() { return List.generate(3, (index) => ListreplyItemModel()); } 
 }
