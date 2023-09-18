import 'package:equatable/equatable.dart';import 'listsizemediumtypef3_item_model.dart';import 'listrectanglefour3_item_model.dart';
// ignore: must_be_immutable
class FilterResultModel extends Equatable {FilterResultModel({this.listsizemediumtypef3ItemList = const [], this.listrectanglefour3ItemList = const []});

List<Listsizemediumtypef3ItemModel> listsizemediumtypef3ItemList;

List<Listrectanglefour3ItemModel> listrectanglefour3ItemList;

FilterResultModel copyWith({List<Listsizemediumtypef3ItemModel>? listsizemediumtypef3ItemList, List<Listrectanglefour3ItemModel>? listrectanglefour3ItemList}) { return FilterResultModel(
listsizemediumtypef3ItemList : listsizemediumtypef3ItemList ?? this.listsizemediumtypef3ItemList,
listrectanglefour3ItemList : listrectanglefour3ItemList ?? this.listrectanglefour3ItemList,
); } 
@override List<Object?> get props => [listsizemediumtypef3ItemList,listrectanglefour3ItemList];
 }
