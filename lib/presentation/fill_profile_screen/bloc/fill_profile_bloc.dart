import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:baburam_s_application5/presentation/fill_profile_screen/models/fill_profile_model.dart';import 'package:baburam_s_application5/data/models/register/post_register_resp.dart';import 'package:baburam_s_application5/data/models/register/post_register_req.dart';import 'dart:async';import 'package:baburam_s_application5/data/repository/repository.dart';import 'package:baburam_s_application5/core/constants/user.dart';part 'fill_profile_event.dart';part 'fill_profile_state.dart';class FillProfileBloc extends Bloc<FillProfileEvent, FillProfileState> {FillProfileBloc(FillProfileState initialState) : super(initialState) { on<FillProfileInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry); on<ChangeDropDownEvent>(_changeDropDown);on<CreateRegisterEvent>(_callCreateRegister); }

final _repository = Repository();

var postRegisterResp = PostRegisterResp();

_changeCountry(ChangeCountryEvent event, Emitter<FillProfileState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<FillProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(FillProfileInitialEvent event, Emitter<FillProfileState> emit, ) async  { emit(state.copyWith(fullnameController: TextEditingController(), nicknameController: TextEditingController(), dateofbirthController: TextEditingController(), emailController: TextEditingController(), phoneNumberController: TextEditingController())); emit(state.copyWith(fillProfileModelObj: state.fillProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
FutureOr<void> _callCreateRegister(CreateRegisterEvent event, Emitter<FillProfileState> emit, ) async  { var postRegisterReq = PostRegisterReq(
username : state.nicknameController?.text,password: User.passwrod,email : state.emailController?.text,name : state.fullnameController?.text,role: User.role,
);
await _repository.createRegister(
headers: {'Content-Type': 'application/json',},
requestData: postRegisterReq.toJson(),
)
.then((value) async {

	postRegisterResp = value;
_onCreateRegisterSuccess(value,emit);
event.onCreateRegisterEventSuccess.call();
})
.onError((error,stackTrace) {

	//implement error call
_onCreateRegisterError();
event.onCreateRegisterEventError.call();
})
; } 
void _onCreateRegisterSuccess(PostRegisterResp resp, Emitter<FillProfileState> emit, ) { 
PrefUtils().setId(resp.data!.id!.toString());emit(state.copyWith(fillProfileModelObj: state.fillProfileModelObj?.copyWith(),),); } 
void _onCreateRegisterError() { 
 //implement error method body...
 } 
 }
