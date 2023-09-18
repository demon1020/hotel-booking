import 'package:equatable/equatable.dart';import 'package:baburam_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class FillProfileModel extends Equatable {FillProfileModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

FillProfileModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return FillProfileModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
