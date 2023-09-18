import 'bloc/forgot_password_type_otp_bloc.dart';import 'models/forgot_password_type_otp_model.dart';import 'package:baburam_s_application5/core/app_export.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_image.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_title.dart';import 'package:baburam_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:baburam_s_application5/widgets/custom_button.dart';import 'package:flutter/material.dart';import 'package:flutter/services.dart';import 'package:pin_code_fields/pin_code_fields.dart';class ForgotPasswordTypeOtpScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<ForgotPasswordTypeOtpBloc>(create: (context) => ForgotPasswordTypeOtpBloc(ForgotPasswordTypeOtpState(forgotPasswordTypeOtpModelObj: ForgotPasswordTypeOtpModel()))..add(ForgotPasswordTypeOtpInitialEvent()), child: ForgotPasswordTypeOtpScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(52), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 13), onTap: () {onTapArrowleft2(context);}), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 34, right: 34), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 19), child: Text("msg_code_has_been_s".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 60), child: BlocSelector<ForgotPasswordTypeOtpBloc, ForgotPasswordTypeOtpState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return PinCodeTextField(appContext: context, controller: otpController, length: 4, obscureText: false, obscuringCharacter: '*', keyboardType: TextInputType.number, autoDismissKeyboard: true, enableActiveFill: true, inputFormatters: [FilteringTextInputFormatter.digitsOnly], onChanged: (value) {otpController?.text = value;}, textStyle: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(24), fontFamily: 'Urbanist', fontWeight: FontWeight.w700), pinTheme: PinTheme(fieldHeight: getHorizontalSize(61), fieldWidth: getHorizontalSize(78), shape: PinCodeFieldShape.box, borderRadius: BorderRadius.circular(getHorizontalSize(12)), selectedFillColor: ColorConstant.blueGray900, activeFillColor: ColorConstant.blueGray900, inactiveFillColor: ColorConstant.blueGray900, inactiveColor: ColorConstant.gray800, selectedColor: ColorConstant.gray800, activeColor: ColorConstant.gray800));})), Padding(padding: getPadding(top: 61), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_resend_code_in".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl_55".tr, style: TextStyle(color: ColorConstant.cyan60001, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2))), TextSpan(text: "lbl_s".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(16), fontFamily: 'Urbanist', fontWeight: FontWeight.w400, letterSpacing: getHorizontalSize(0.2)))]), textAlign: TextAlign.left))])), bottomNavigationBar: CustomButton(height: getVerticalSize(55), text: "lbl_verify".tr, margin: getMargin(left: 24, right: 24, bottom: 48), variant: ButtonVariant.FillCyan600, onTap: () {onTapVerify(context);}))); } 
onTapVerify(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordFilledTypeScreen, ); } 
onTapArrowleft2(BuildContext context) { NavigatorService.goBack(); } 
 }
