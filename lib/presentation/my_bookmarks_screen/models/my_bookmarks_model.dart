import 'package:equatable/equatable.dart';import 'my_bookmarks_item_model.dart';
// ignore: must_be_immutable
class MyBookmarksModel extends Equatable {MyBookmarksModel({this.myBookmarksItemList = const []});

List<MyBookmarksItemModel> myBookmarksItemList;

MyBookmarksModel copyWith({List<MyBookmarksItemModel>? myBookmarksItemList}) { return MyBookmarksModel(
myBookmarksItemList : myBookmarksItemList ?? this.myBookmarksItemList,
); } 
@override List<Object?> get props => [myBookmarksItemList];
 }
