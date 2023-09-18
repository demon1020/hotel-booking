import 'package:equatable/equatable.dart';import 'listsizemediumtypef1_item_model.dart';
// ignore: must_be_immutable
class SearchTypeModel extends Equatable {SearchTypeModel({this.listsizemediumtypef1ItemList = const []});

List<Listsizemediumtypef1ItemModel> listsizemediumtypef1ItemList;

SearchTypeModel copyWith({List<Listsizemediumtypef1ItemModel>? listsizemediumtypef1ItemList}) { return SearchTypeModel(
listsizemediumtypef1ItemList : listsizemediumtypef1ItemList ?? this.listsizemediumtypef1ItemList,
); } 
@override List<Object?> get props => [listsizemediumtypef1ItemList];
 }
