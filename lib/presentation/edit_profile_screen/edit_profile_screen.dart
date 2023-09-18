import 'bloc/edit_profile_bloc.dart';import 'models/edit_profile_model.dart';import 'package:baburam_s_application5/core/app_export.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_image.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_title.dart';import 'package:baburam_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:baburam_s_application5/widgets/custom_button.dart';import 'package:baburam_s_application5/widgets/custom_drop_down.dart';import 'package:baburam_s_application5/widgets/custom_phone_number.dart';import 'package:baburam_s_application5/widgets/custom_text_form_field.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';class EditProfileScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<EditProfileBloc>(create: (context) => EditProfileBloc(EditProfileState(editProfileModelObj: EditProfileModel()))..add(EditProfileInitialEvent()), child: EditProfileScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft20(context);}), title: AppbarTitle(text: "lbl_edit_profile".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 47, right: 24, bottom: 47), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.statusfilltypedController, builder: (context, statusfilltypedController) {return CustomTextFormField(focusNode: FocusNode(), controller: statusfilltypedController, hintText: "lbl_daniel_austin".tr);}), BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.firstnameController, builder: (context, firstnameController) {return CustomTextFormField(focusNode: FocusNode(), controller: firstnameController, hintText: "lbl_daniel".tr, margin: getMargin(top: 24));}), BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.dobController, builder: (context, dobController) {return CustomTextFormField(focusNode: FocusNode(), controller: dobController, hintText: "lbl_12_27_1995".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT19, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgCalendar20x20)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)));}), BlocSelector<EditProfileBloc, EditProfileState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(focusNode: FocusNode(), controller: emailController, hintText: "lbl_uder_domain_com".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT19, textInputType: TextInputType.emailAddress, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgClock20x20)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56)));}), BlocSelector<EditProfileBloc, EditProfileState, EditProfileModel?>(selector: (state) => state.editProfileModelObj, builder: (context, editProfileModelObj) {return CustomDropDown(focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 20), child: CustomImageView(svgPath: ImageConstant.imgFavorite20x20)), hintText: "lbl_united_states".tr, margin: getMargin(top: 24), items: editProfileModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<EditProfileBloc>().add(ChangeDropDownEvent(value: value));});}), Padding(padding: getPadding(top: 24), child: BlocBuilder<EditProfileBloc, EditProfileState>(builder: (context, state) {return CustomPhoneNumber(country: state.selectedCountry ?? CountryPickerUtils.getCountryByPhoneCode('1'), controller: state.phoneNumberController, onTap: (Country country) {context.read<EditProfileBloc>().add(ChangeCountryEvent(value: country));});})), BlocSelector<EditProfileBloc, EditProfileState, EditProfileModel?>(selector: (state) => state.editProfileModelObj, builder: (context, editProfileModelObj) {return CustomDropDown(focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 20), child: CustomImageView(svgPath: ImageConstant.imgFavorite20x20)), hintText: "lbl_male".tr, margin: getMargin(top: 24, bottom: 5), items: editProfileModelObj?.dropdownItemList1 ?? [], onChanged: (value) {context.read<EditProfileBloc>().add(ChangeDropDown1Event(value: value));});})])), bottomNavigationBar: CustomButton(height: getVerticalSize(55), text: "lbl_update".tr, margin: getMargin(left: 24, right: 24, bottom: 48), variant: ButtonVariant.OutlineGreenA7003f))); } 
onTapArrowleft20(BuildContext context) { NavigatorService.goBack(); } 
 }
