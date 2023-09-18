import 'bloc/cancelation_successful_bloc.dart';
import 'models/cancelation_successful_model.dart';
import 'package:baburam_s_application5/core/app_export.dart';
import 'package:baburam_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CancelationSuccessfulDialog extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CancelationSuccessfulBloc>(
      create: (context) => CancelationSuccessfulBloc(CancelationSuccessfulState(
        cancelationSuccessfulModelObj: CancelationSuccessfulModel(),
      ))
        ..add(CancelationSuccessfulInitialEvent()),
      child: CancelationSuccessfulDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getHorizontalSize(
        340,
      ),
      padding: getPadding(
        all: 32,
      ),
      decoration: AppDecoration.fillBluegray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgGroupCyan600,
            height: getVerticalSize(
              180,
            ),
            width: getHorizontalSize(
              185,
            ),
            margin: getMargin(
              top: 8,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 31,
            ),
            child: Text(
              "lbl_successfull".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold24Cyan60001,
            ),
          ),
          Container(
            width: getHorizontalSize(
              250,
            ),
            margin: getMargin(
              left: 12,
              top: 17,
              right: 13,
            ),
            child: Text(
              "msg_you_have_succes".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          CustomButton(
            height: getVerticalSize(
              58,
            ),
            text: "lbl_ok".tr,
            margin: getMargin(
              top: 29,
            ),
          ),
        ],
      ),
    );
  }
}
