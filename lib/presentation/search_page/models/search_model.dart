import 'package:equatable/equatable.dart';import 'listsizemediumtypef_item_model.dart';import 'listrectanglefour2_item_model.dart';
// ignore: must_be_immutable
class SearchModel extends Equatable {SearchModel({this.listsizemediumtypefItemList = const [], this.listrectanglefour2ItemList = const []});

List<ListsizemediumtypefItemModel> listsizemediumtypefItemList;

List<Listrectanglefour2ItemModel> listrectanglefour2ItemList;

SearchModel copyWith({List<ListsizemediumtypefItemModel>? listsizemediumtypefItemList, List<Listrectanglefour2ItemModel>? listrectanglefour2ItemList}) { return SearchModel(
listsizemediumtypefItemList : listsizemediumtypefItemList ?? this.listsizemediumtypefItemList,
listrectanglefour2ItemList : listrectanglefour2ItemList ?? this.listrectanglefour2ItemList,
); } 
@override List<Object?> get props => [listsizemediumtypefItemList,listrectanglefour2ItemList];
 }
