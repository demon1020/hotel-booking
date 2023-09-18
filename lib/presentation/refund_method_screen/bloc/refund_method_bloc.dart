import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/refund_method_item_model.dart';import 'package:baburam_s_application5/presentation/refund_method_screen/models/refund_method_model.dart';part 'refund_method_event.dart';part 'refund_method_state.dart';class RefundMethodBloc extends Bloc<RefundMethodEvent, RefundMethodState> {RefundMethodBloc(RefundMethodState initialState) : super(initialState) { on<RefundMethodInitialEvent>(_onInitialize); }

_onInitialize(RefundMethodInitialEvent event, Emitter<RefundMethodState> emit, ) async  { emit(state.copyWith(refundMethodModelObj: state.refundMethodModelObj?.copyWith(refundMethodItemList: fillRefundMethodItemList()))); } 
List<RefundMethodItemModel> fillRefundMethodItemList() { return List.generate(3, (index) => RefundMethodItemModel()); } 
 }
