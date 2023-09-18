import 'package:equatable/equatable.dart';import 'package:baburam_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class EditProfileModel extends Equatable {EditProfileModel({this.dropdownItemList = const [], this.dropdownItemList1 = const []});

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

EditProfileModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1}) { return EditProfileModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1];
 }
