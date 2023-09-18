import 'package:equatable/equatable.dart';import 'listcheckin_item_model.dart';
// ignore: must_be_immutable
class ConfirmPaymentModel extends Equatable {ConfirmPaymentModel({this.listcheckinItemList = const []});

List<ListcheckinItemModel> listcheckinItemList;

ConfirmPaymentModel copyWith({List<ListcheckinItemModel>? listcheckinItemList}) { return ConfirmPaymentModel(
listcheckinItemList : listcheckinItemList ?? this.listcheckinItemList,
); } 
@override List<Object?> get props => [listcheckinItemList];
 }
