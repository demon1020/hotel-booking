import 'package:equatable/equatable.dart';import 'card_added_item_model.dart';
// ignore: must_be_immutable
class CardAddedModel extends Equatable {CardAddedModel({this.cardAddedItemList = const []});

List<CardAddedItemModel> cardAddedItemList;

CardAddedModel copyWith({List<CardAddedItemModel>? cardAddedItemList}) { return CardAddedModel(
cardAddedItemList : cardAddedItemList ?? this.cardAddedItemList,
); } 
@override List<Object?> get props => [cardAddedItemList];
 }
