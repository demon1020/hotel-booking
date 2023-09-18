import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:baburam_s_application5/widgets/custom_bottom_bar.dart';import 'package:baburam_s_application5/presentation/home_screen_container_screen/models/home_screen_container_model.dart';part 'home_screen_container_event.dart';part 'home_screen_container_state.dart';class HomeScreenContainerBloc extends Bloc<HomeScreenContainerEvent, HomeScreenContainerState> {HomeScreenContainerBloc(HomeScreenContainerState initialState) : super(initialState) { on<HomeScreenContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeScreenContainerInitialEvent event, Emitter<HomeScreenContainerState> emit, ) async  {  } 
 }
