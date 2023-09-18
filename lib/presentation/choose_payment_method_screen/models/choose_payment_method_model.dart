import 'package:equatable/equatable.dart';import 'listreply_item_model.dart';
// ignore: must_be_immutable
class ChoosePaymentMethodModel extends Equatable {ChoosePaymentMethodModel({this.listreplyItemList = const []});

List<ListreplyItemModel> listreplyItemList;

ChoosePaymentMethodModel copyWith({List<ListreplyItemModel>? listreplyItemList}) { return ChoosePaymentMethodModel(
listreplyItemList : listreplyItemList ?? this.listreplyItemList,
); } 
@override List<Object?> get props => [listreplyItemList];
 }
