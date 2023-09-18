import '../gallery_screen/widgets/gallery_item_widget.dart';import 'bloc/gallery_bloc.dart';import 'models/gallery_item_model.dart';import 'models/gallery_model.dart';import 'package:baburam_s_application5/core/app_export.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_image.dart';import 'package:baburam_s_application5/widgets/app_bar/appbar_title.dart';import 'package:baburam_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class GalleryScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<GalleryBloc>(create: (context) => GalleryBloc(GalleryState(galleryModelObj: GalleryModel()))..add(GalleryInitialEvent()), child: GalleryScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft9(context);}), title: AppbarTitle(text: "msg_gallery_hotel_p".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgClock, margin: getMargin(left: 24, top: 10, right: 24, bottom: 13))]), body: Padding(padding: getPadding(left: 24, top: 28, right: 24), child: BlocSelector<GalleryBloc, GalleryState, GalleryModel?>(selector: (state) => state.galleryModelObj, builder: (context, galleryModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(141), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(16), crossAxisSpacing: getHorizontalSize(16)), physics: NeverScrollableScrollPhysics(), itemCount: galleryModelObj?.galleryItemList.length ?? 0, itemBuilder: (context, index) {GalleryItemModel model = galleryModelObj?.galleryItemList[index] ?? GalleryItemModel(); return GalleryItemWidget(model);});})))); } 
onTapArrowleft9(BuildContext context) { NavigatorService.goBack(); } 
 }
