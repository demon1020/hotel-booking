import '../review_screen/widgets/listellipseone_item_widget.dart';import '../review_screen/widgets/liststar1_item_widget.dart';import 'bloc/review_bloc.dart';import 'models/listellipseone_item_model.dart';import 'models/liststar1_item_model.dart';import 'models/review_model.dart';import 'package:baburam_s_application5/core/app_export.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_image.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_title.dart';import 'package:baburam_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:baburam_s_application5/presentation/rate_hotel_bottomsheet/rate_hotel_bottomsheet.dart';class ReviewScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<ReviewBloc>(create: (context) => ReviewBloc(ReviewState(reviewModelObj: ReviewModel()))..add(ReviewInitialEvent()), child: ReviewScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(49), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 10), onTap: () {onTapArrowleft11(context);}), title: AppbarTitle(text: "lbl_review".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock, margin: getMargin(left: 24, top: 11, right: 24, bottom: 10), onTap: () {onTapClock(context);})]), body: Container(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Container(height: getVerticalSize(68), child: BlocSelector<ReviewBloc, ReviewState, ReviewModel?>(selector: (state) => state.reviewModelObj, builder: (context, reviewModelObj) {return ListView.separated(padding: getPadding(left: 24, top: 30), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(8));}, itemCount: reviewModelObj?.liststar1ItemList.length ?? 0, itemBuilder: (context, index) {Liststar1ItemModel model = reviewModelObj?.liststar1ItemList[index] ?? Liststar1ItemModel(); return Liststar1ItemWidget(model);});}))), Padding(padding: getPadding(left: 24, top: 37, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 2), child: Text("lbl_rating".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Spacer(), CustomImageView(svgPath: ImageConstant.imgStar12x12, height: getSize(16), width: getSize(16), margin: getMargin(top: 1, bottom: 4)), Padding(padding: getPadding(left: 8, bottom: 2), child: Text("lbl_4_8".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold16.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(left: 8, top: 1, bottom: 3), child: Text("lbl_4_981_reviews".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Padding(padding: getPadding(left: 24, top: 18, right: 24), child: BlocSelector<ReviewBloc, ReviewState, ReviewModel?>(selector: (state) => state.reviewModelObj, builder: (context, reviewModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(20));}, itemCount: reviewModelObj?.listellipseoneItemList.length ?? 0, itemBuilder: (context, index) {ListellipseoneItemModel model = reviewModelObj?.listellipseoneItemList[index] ?? ListellipseoneItemModel(); return ListellipseoneItemWidget(model);});}))])))); } 
onTapArrowleft11(BuildContext context) { NavigatorService.goBack(); } 
onTapClock(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>RateHotelBottomsheet.builder(context),isScrollControlled: true); } 
 }
