import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/view_ticket_item_model.dart';import 'package:baburam_s_application5/presentation/view_ticket_screen/models/view_ticket_model.dart';part 'view_ticket_event.dart';part 'view_ticket_state.dart';class ViewTicketBloc extends Bloc<ViewTicketEvent, ViewTicketState> {ViewTicketBloc(ViewTicketState initialState) : super(initialState) { on<ViewTicketInitialEvent>(_onInitialize); }

_onInitialize(ViewTicketInitialEvent event, Emitter<ViewTicketState> emit, ) async  { emit(state.copyWith(viewTicketModelObj: state.viewTicketModelObj?.copyWith(viewTicketItemList: fillViewTicketItemList()))); } 
List<ViewTicketItemModel> fillViewTicketItemList() { return List.generate(3, (index) => ViewTicketItemModel()); } 
 }
