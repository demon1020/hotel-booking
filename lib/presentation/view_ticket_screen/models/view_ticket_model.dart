import 'package:equatable/equatable.dart';import 'view_ticket_item_model.dart';
// ignore: must_be_immutable
class ViewTicketModel extends Equatable {ViewTicketModel({this.viewTicketItemList = const []});

List<ViewTicketItemModel> viewTicketItemList;

ViewTicketModel copyWith({List<ViewTicketItemModel>? viewTicketItemList}) { return ViewTicketModel(
viewTicketItemList : viewTicketItemList ?? this.viewTicketItemList,
); } 
@override List<Object?> get props => [viewTicketItemList];
 }
