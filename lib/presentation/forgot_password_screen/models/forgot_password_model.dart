import 'package:equatable/equatable.dart';import 'listvolume_item_model.dart';
// ignore: must_be_immutable
class ForgotPasswordModel extends Equatable {ForgotPasswordModel({this.listvolumeItemList = const []});

List<ListvolumeItemModel> listvolumeItemList;

ForgotPasswordModel copyWith({List<ListvolumeItemModel>? listvolumeItemList}) { return ForgotPasswordModel(
listvolumeItemList : listvolumeItemList ?? this.listvolumeItemList,
); } 
@override List<Object?> get props => [listvolumeItemList];
 }
