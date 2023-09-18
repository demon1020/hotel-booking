import 'package:equatable/equatable.dart';import 'options_item_model.dart';import 'hotels_item_model.dart';import 'listrectanglefour_item_model.dart';
// ignore: must_be_immutable
class HomeScreenModel extends Equatable {HomeScreenModel({this.optionsItemList = const [], this.hotelsItemList = const [], this.listrectanglefourItemList = const []});

List<OptionsItemModel> optionsItemList;

List<HotelsItemModel> hotelsItemList;

List<ListrectanglefourItemModel> listrectanglefourItemList;

HomeScreenModel copyWith({List<OptionsItemModel>? optionsItemList, List<HotelsItemModel>? hotelsItemList, List<ListrectanglefourItemModel>? listrectanglefourItemList}) { return HomeScreenModel(
optionsItemList : optionsItemList ?? this.optionsItemList,
hotelsItemList : hotelsItemList ?? this.hotelsItemList,
listrectanglefourItemList : listrectanglefourItemList ?? this.listrectanglefourItemList,
); } 
@override List<Object?> get props => [optionsItemList,hotelsItemList,listrectanglefourItemList];
 }
