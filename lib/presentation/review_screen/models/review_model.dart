import 'package:equatable/equatable.dart';import 'liststar1_item_model.dart';import 'listellipseone_item_model.dart';
// ignore: must_be_immutable
class ReviewModel extends Equatable {ReviewModel({this.liststar1ItemList = const [], this.listellipseoneItemList = const []});

List<Liststar1ItemModel> liststar1ItemList;

List<ListellipseoneItemModel> listellipseoneItemList;

ReviewModel copyWith({List<Liststar1ItemModel>? liststar1ItemList, List<ListellipseoneItemModel>? listellipseoneItemList}) { return ReviewModel(
liststar1ItemList : liststar1ItemList ?? this.liststar1ItemList,
listellipseoneItemList : listellipseoneItemList ?? this.listellipseoneItemList,
); } 
@override List<Object?> get props => [liststar1ItemList,listellipseoneItemList];
 }
