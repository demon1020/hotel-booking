import 'bloc/booking_cancelled_bloc.dart';
import 'models/booking_cancelled_model.dart';
import 'package:baburam_s_application5/core/app_export.dart';
import 'package:baburam_s_application5/widgets/custom_button.dart';
import 'package:baburam_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookingCancelledPage extends StatefulWidget {
  @override
  _BookingCancelledPageState createState() => _BookingCancelledPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BookingCancelledBloc>(
      create: (context) => BookingCancelledBloc(BookingCancelledState(
        bookingCancelledModelObj: BookingCancelledModel(),
      ))
        ..add(BookingCancelledInitialEvent()),
      child: BookingCancelledPage(),
    );
  }
}

class _BookingCancelledPageState extends State<BookingCancelledPage>
    with AutomaticKeepAliveClientMixin<BookingCancelledPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 30,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          padding: getPadding(
                            all: 20,
                          ),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  right: 43,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle4100x1001,
                                      height: getSize(
                                        100,
                                      ),
                                      width: getSize(
                                        100,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 5,
                                        bottom: 6,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "msg_palms_casino_re".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 13,
                                            ),
                                            child: Text(
                                              "msg_london_united".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRegular14Gray300
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              24,
                                            ),
                                            width: getHorizontalSize(
                                              60,
                                            ),
                                            text: "lbl_paid".tr,
                                            margin: getMargin(
                                              top: 10,
                                            ),
                                            variant:
                                                ButtonVariant.FillRedA2001e,
                                            shape: ButtonShape.RoundedBorder6,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistSemiBold10RedA200,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.blueGray70001,
                                ),
                              ),
                              BlocSelector<
                                  BookingCancelledBloc,
                                  BookingCancelledState,
                                  TextEditingController?>(
                                selector: (state) =>
                                    state.statuserrorcompController,
                                builder: (context, statuserrorcompController) {
                                  return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: statuserrorcompController,
                                    hintText: "msg_you_canceled_th".tr,
                                    margin: getMargin(
                                      top: 19,
                                    ),
                                    variant: TextFormFieldVariant.FillRedA20033,
                                    padding: TextFormFieldPadding.PaddingT11,
                                    fontStyle: TextFormFieldFontStyle
                                        .UrbanistRegular10RedA200,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 12,
                                        top: 8,
                                        right: 7,
                                        bottom: 8,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgWarning,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(
                                        34,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            top: 20,
                          ),
                          padding: getPadding(
                            all: 20,
                          ),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  right: 86,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle100x1001,
                                      height: getSize(
                                        100,
                                      ),
                                      width: getSize(
                                        100,
                                      ),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 5,
                                        bottom: 6,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_the_mark_hotel".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 13,
                                            ),
                                            child: Text(
                                              "msg_luxemburg_germ".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRegular14Gray300
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.2,
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              24,
                                            ),
                                            width: getHorizontalSize(
                                              60,
                                            ),
                                            text: "lbl_paid".tr,
                                            margin: getMargin(
                                              top: 10,
                                            ),
                                            variant:
                                                ButtonVariant.FillRedA2001e,
                                            shape: ButtonShape.RoundedBorder6,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistSemiBold10RedA200,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    1,
                                  ),
                                  thickness: getVerticalSize(
                                    1,
                                  ),
                                  color: ColorConstant.blueGray70001,
                                ),
                              ),
                              BlocSelector<
                                  BookingCancelledBloc,
                                  BookingCancelledState,
                                  TextEditingController?>(
                                selector: (state) =>
                                    state.statuserrorcompOneController,
                                builder:
                                    (context, statuserrorcompOneController) {
                                  return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: statuserrorcompOneController,
                                    hintText: "msg_you_canceled_th".tr,
                                    margin: getMargin(
                                      top: 19,
                                    ),
                                    variant: TextFormFieldVariant.FillRedA20033,
                                    padding: TextFormFieldPadding.PaddingT11,
                                    fontStyle: TextFormFieldFontStyle
                                        .UrbanistRegular10RedA200,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 12,
                                        top: 8,
                                        right: 7,
                                        bottom: 8,
                                      ),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgWarning,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(
                                        34,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
