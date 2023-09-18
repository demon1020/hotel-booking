import 'package:equatable/equatable.dart';import 'hotel_details_item_model.dart';import 'package:baburam_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class HotelDetailsModel extends Equatable {HotelDetailsModel({this.hotelDetailsItemList = const [], this.dropdownItemList = const []});

List<HotelDetailsItemModel> hotelDetailsItemList;

List<SelectionPopupModel> dropdownItemList;

HotelDetailsModel copyWith({List<HotelDetailsItemModel>? hotelDetailsItemList, List<SelectionPopupModel>? dropdownItemList}) { return HotelDetailsModel(
hotelDetailsItemList : hotelDetailsItemList ?? this.hotelDetailsItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [hotelDetailsItemList,dropdownItemList];
 }
