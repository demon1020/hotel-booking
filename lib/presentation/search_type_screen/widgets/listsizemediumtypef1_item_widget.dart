import '../models/listsizemediumtypef1_item_model.dart';
import 'package:baburam_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listsizemediumtypef1ItemWidget extends StatelessWidget {
  Listsizemediumtypef1ItemWidget(this.listsizemediumtypef1ItemModelObj);

  Listsizemediumtypef1ItemModel listsizemediumtypef1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(
            101,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 8,
            right: 20,
            bottom: 8,
          ),
          decoration: AppDecoration.txtFillCyan60001.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder19,
          ),
          child: Text(
            listsizemediumtypef1ItemModelObj.sizemediumtypefTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
