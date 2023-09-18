import 'package:equatable/equatable.dart';import 'listcountry_item_model.dart';import 'listsizemediumtypef2_item_model.dart';import 'liststar_item_model.dart';
// ignore: must_be_immutable
class SearchFilterModel extends Equatable {SearchFilterModel({this.listcountryItemList = const [], this.listsizemediumtypef2ItemList = const [], this.liststarItemList = const []});

List<ListcountryItemModel> listcountryItemList;

List<Listsizemediumtypef2ItemModel> listsizemediumtypef2ItemList;

List<ListstarItemModel> liststarItemList;

SearchFilterModel copyWith({List<ListcountryItemModel>? listcountryItemList, List<Listsizemediumtypef2ItemModel>? listsizemediumtypef2ItemList, List<ListstarItemModel>? liststarItemList}) { return SearchFilterModel(
listcountryItemList : listcountryItemList ?? this.listcountryItemList,
listsizemediumtypef2ItemList : listsizemediumtypef2ItemList ?? this.listsizemediumtypef2ItemList,
liststarItemList : liststarItemList ?? this.liststarItemList,
); } 
@override List<Object?> get props => [listcountryItemList,listsizemediumtypef2ItemList,liststarItemList];
 }
