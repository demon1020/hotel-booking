import 'package:equatable/equatable.dart';import 'sectionlisttoday_item_model.dart';
// ignore: must_be_immutable
class NotificationsModel extends Equatable {NotificationsModel({this.sectionlisttodayItemList = const []});

List<SectionlisttodayItemModel> sectionlisttodayItemList;

NotificationsModel copyWith({List<SectionlisttodayItemModel>? sectionlisttodayItemList}) { return NotificationsModel(
sectionlisttodayItemList : sectionlisttodayItemList ?? this.sectionlisttodayItemList,
); } 
@override List<Object?> get props => [sectionlisttodayItemList];
 }
