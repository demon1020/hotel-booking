import 'bloc/rate_hotel_bloc.dart';
import 'models/rate_hotel_model.dart';
import 'package:baburam_s_application5/core/app_export.dart';
import 'package:baburam_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore_for_file: must_be_immutable
class RateHotelBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RateHotelBloc>(
      create: (context) => RateHotelBloc(RateHotelState(
        rateHotelModelObj: RateHotelModel(),
      ))
        ..add(RateHotelInitialEvent()),
      child: RateHotelBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 8,
            right: 24,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineGray8002.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrameGray700,
                height: getVerticalSize(
                  3,
                ),
                width: getHorizontalSize(
                  38,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "lbl_rate_the_hotel".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 30,
                ),
                padding: getPadding(
                  all: 20,
                ),
                decoration: AppDecoration.outlineBlack9000c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4100x1004,
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
                        top: 10,
                        bottom: 9,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_bulgari_resort".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Text(
                              "lbl_paris_france".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtUrbanistRegular14Gray300.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar12x12,
                                  height: getSize(
                                    12,
                                  ),
                                  width: getSize(
                                    12,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 2,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                  ),
                                  child: Text(
                                    "lbl_4_8".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistSemiBold14.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_4_378_reviews".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 6,
                        bottom: 6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_27".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold24Cyan60001,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "lbl_night".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgBookmark24x24,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                ),
                child: Text(
                  "msg_please_give_you".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                ),
                child: RatingBar.builder(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemSize: getVerticalSize(
                    25,
                  ),
                  itemCount: 5,
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {},
                  itemBuilder: (context, _) {
                    return Icon(
                      Icons.star,
                      color: ColorConstant.yellowA700,
                    );
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    380,
                  ),
                  margin: getMargin(
                    top: 27,
                  ),
                  padding: getPadding(
                    left: 20,
                    top: 18,
                    right: 20,
                    bottom: 18,
                  ),
                  decoration: AppDecoration.fillBluegray900.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          325,
                        ),
                        margin: getMargin(
                          top: 2,
                          right: 14,
                        ),
                        child: Text(
                          "msg_the_rooms_are_v".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  55,
                ),
                text: "lbl_rate_now".tr,
                margin: getMargin(
                  top: 24,
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  55,
                ),
                text: "lbl_later".tr,
                margin: getMargin(
                  top: 12,
                  bottom: 58,
                ),
                variant: ButtonVariant.FillGray800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
