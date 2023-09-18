import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/payment_successful_dialog/models/payment_successful_model.dart';part 'payment_successful_event.dart';part 'payment_successful_state.dart';class PaymentSuccessfulBloc extends Bloc<PaymentSuccessfulEvent, PaymentSuccessfulState> {PaymentSuccessfulBloc(PaymentSuccessfulState initialState) : super(initialState) { on<PaymentSuccessfulInitialEvent>(_onInitialize); }

_onInitialize(PaymentSuccessfulInitialEvent event, Emitter<PaymentSuccessfulState> emit, ) async  {  } 
 }
