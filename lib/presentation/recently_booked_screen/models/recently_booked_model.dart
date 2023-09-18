import 'package:equatable/equatable.dart';import 'listrectanglefour1_item_model.dart';
// ignore: must_be_immutable
class RecentlyBookedModel extends Equatable {RecentlyBookedModel({this.listrectanglefour1ItemList = const []});

List<Listrectanglefour1ItemModel> listrectanglefour1ItemList;

RecentlyBookedModel copyWith({List<Listrectanglefour1ItemModel>? listrectanglefour1ItemList}) { return RecentlyBookedModel(
listrectanglefour1ItemList : listrectanglefour1ItemList ?? this.listrectanglefour1ItemList,
); } 
@override List<Object?> get props => [listrectanglefour1ItemList];
 }
