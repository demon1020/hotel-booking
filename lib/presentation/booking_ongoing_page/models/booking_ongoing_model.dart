import 'package:equatable/equatable.dart';import 'listrectangle_item_model.dart';
// ignore: must_be_immutable
class BookingOngoingModel extends Equatable {BookingOngoingModel({this.listrectangleItemList = const []});

List<ListrectangleItemModel> listrectangleItemList;

BookingOngoingModel copyWith({List<ListrectangleItemModel>? listrectangleItemList}) { return BookingOngoingModel(
listrectangleItemList : listrectangleItemList ?? this.listrectangleItemList,
); } 
@override List<Object?> get props => [listrectangleItemList];
 }
