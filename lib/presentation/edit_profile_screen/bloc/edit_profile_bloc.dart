import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:baburam_s_application5/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:baburam_s_application5/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:baburam_s_application5/data/repository/repository.dart';import 'package:fluttertoast/fluttertoast.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeCountryEvent>(_changeCountry); on<ChangeDropDown1Event>(_changeDropDown1);on<FetchMeEvent>(_callFetchMe); }

final _repository = Repository();

var getMeResp = GetMeResp();

_changeDropDown(ChangeDropDownEvent event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeCountry(ChangeCountryEvent event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  { emit(state.copyWith(statusfilltypedController: TextEditingController(), firstnameController: TextEditingController(), dobController: TextEditingController(), emailController: TextEditingController(), phoneNumberController: TextEditingController())); emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1())));
add(FetchMeEvent(onFetchMeEventError: () {

_onFetchMeEventError();
},),);
 } 
FutureOr<void> _callFetchMe(FetchMeEvent event, Emitter<EditProfileState> emit, ) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value,emit);
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
event.onFetchMeEventError.call();
})
; } 
void _onFetchMeSuccess(GetMeResp resp, Emitter<EditProfileState> emit, ) { 
emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(),firstnameController : TextEditingController(text: resp.data!.username!.toString()),
emailController : TextEditingController(text: resp.data!.email!.toString()),
statusfilltypedController : TextEditingController(text: resp.data!.name!.toString()),
),); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
void _onFetchMeEventError() { 
Fluttertoast.showToast(msg: .message!.toString(),); } 
 }
