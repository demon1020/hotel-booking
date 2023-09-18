import 'bloc/booking_completed_bloc.dart';
import 'models/booking_completed_model.dart';
import 'package:baburam_s_application5/core/app_export.dart';
import 'package:baburam_s_application5/widgets/custom_button.dart';
import 'package:baburam_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookingCompletedPage extends StatefulWidget {
  @override
  _BookingCompletedPageState createState() => _BookingCompletedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BookingCompletedBloc>(
      create: (context) => BookingCompletedBloc(BookingCompletedState(
        bookingCompletedModelObj: BookingCompletedModel(),
      ))
        ..add(BookingCompletedInitialEvent()),
      child: BookingCompletedPage(),
    );
  }
}

class _BookingCompletedPageState extends State<BookingCompletedPage>
    with AutomaticKeepAliveClientMixin<BookingCompletedPage> {
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
                                  right: 99,
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
                                        top: 8,
                                        bottom: 6,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_bulgari_resort".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 9,
                                            ),
                                            child: Text(
                                              "lbl_paris_france".tr,
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
                                              72,
                                            ),
                                            text: "lbl_completed".tr,
                                            margin: getMargin(
                                              top: 11,
                                            ),
                                            variant:
                                                ButtonVariant.FillGreenA7001e,
                                            shape: ButtonShape.RoundedBorder6,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistSemiBold10,
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
                                  color: ColorConstant.blueGray700,
                                ),
                              ),
                              BlocSelector<
                                  BookingCompletedBloc,
                                  BookingCompletedState,
                                  TextEditingController?>(
                                selector: (state) =>
                                    state.statussuccessController,
                                builder: (context, statussuccessController) {
                                  return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: statussuccessController,
                                    hintText: "msg_yeay_you_have".tr,
                                    margin: getMargin(
                                      top: 19,
                                    ),
                                    variant:
                                        TextFormFieldVariant.FillGreen40033,
                                    padding: TextFormFieldPadding.PaddingT11,
                                    fontStyle: TextFormFieldFontStyle
                                        .UrbanistRegular10Green500_1,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 12,
                                        top: 8,
                                        right: 7,
                                        bottom: 8,
                                      ),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmark18x18,
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
                                  right: 19,
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
                                            "msg_hotel_martinez".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistRomanBold20,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 12,
                                            ),
                                            child: Text(
                                              "msg_amsterdam_neth".tr,
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
                                              72,
                                            ),
                                            text: "lbl_completed".tr,
                                            margin: getMargin(
                                              top: 11,
                                            ),
                                            variant:
                                                ButtonVariant.FillGreenA7001e,
                                            shape: ButtonShape.RoundedBorder6,
                                            padding: ButtonPadding.PaddingAll6,
                                            fontStyle: ButtonFontStyle
                                                .UrbanistSemiBold10,
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
                                  color: ColorConstant.blueGray700,
                                ),
                              ),
                              BlocSelector<
                                  BookingCompletedBloc,
                                  BookingCompletedState,
                                  TextEditingController?>(
                                selector: (state) =>
                                    state.statussuccessOneController,
                                builder: (context, statussuccessOneController) {
                                  return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: statussuccessOneController,
                                    hintText: "msg_yeay_you_have".tr,
                                    margin: getMargin(
                                      top: 19,
                                    ),
                                    variant:
                                        TextFormFieldVariant.FillGreen40033,
                                    padding: TextFormFieldPadding.PaddingT11,
                                    fontStyle: TextFormFieldFontStyle
                                        .UrbanistRegular10Green500_1,
                                    textInputAction: TextInputAction.done,
                                    prefix: Container(
                                      margin: getMargin(
                                        left: 12,
                                        top: 8,
                                        right: 7,
                                        bottom: 8,
                                      ),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgCheckmark18x18,
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
