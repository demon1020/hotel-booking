import 'package:equatable/equatable.dart';import 'refund_method_item_model.dart';
// ignore: must_be_immutable
class RefundMethodModel extends Equatable {RefundMethodModel({this.refundMethodItemList = const []});

List<RefundMethodItemModel> refundMethodItemList;

RefundMethodModel copyWith({List<RefundMethodItemModel>? refundMethodItemList}) { return RefundMethodModel(
refundMethodItemList : refundMethodItemList ?? this.refundMethodItemList,
); } 
@override List<Object?> get props => [refundMethodItemList];
 }
