import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:baburam_s_application5/presentation/cancelation_successful_dialog/models/cancelation_successful_model.dart';
part 'cancelation_successful_event.dart';
part 'cancelation_successful_state.dart';

class CancelationSuccessfulBloc
    extends Bloc<CancelationSuccessfulEvent, CancelationSuccessfulState> {
  CancelationSuccessfulBloc(CancelationSuccessfulState initialState)
      : super(initialState) {
    on<CancelationSuccessfulInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CancelationSuccessfulInitialEvent event,
    Emitter<CancelationSuccessfulState> emit,
  ) async {}
}
