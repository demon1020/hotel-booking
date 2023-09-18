import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/presentation/location_screen/models/location_model.dart';part 'location_event.dart';part 'location_state.dart';class LocationBloc extends Bloc<LocationEvent, LocationState> {LocationBloc(LocationState initialState) : super(initialState) { on<LocationInitialEvent>(_onInitialize); }

_onInitialize(LocationInitialEvent event, Emitter<LocationState> emit, ) async  {  } 
 }
