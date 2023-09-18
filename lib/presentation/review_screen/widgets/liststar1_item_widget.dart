import '../models/liststar1_item_model.dart';
import 'package:baburam_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Liststar1ItemWidget extends StatelessWidget {
  Liststar1ItemWidget(this.liststar1ItemModelObj);

  Liststar1ItemModel liststar1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 8,
          ),
          padding: getPadding(
            left: 20,
            top: 9,
            right: 20,
            bottom: 9,
          ),
          decoration: AppDecoration.fillCyan60001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgStar,
                height: getSize(
                  16,
                ),
                width: getSize(
                  16,
                ),
                margin: getMargin(
                  top: 2,
                  bottom: 2,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 8,
                ),
                child: Text(
                  liststar1ItemModelObj.chipsTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(
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
    );
  }
}
