// ignore_for_file: must_be_immutable

part of 'search_filter_bloc.dart';

class SearchFilterState extends Equatable {
  SearchFilterState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
    this.isCheckbox3 = false,
    this.isCheckbox4 = false,
    this.isCheckbox5 = false,
    this.searchFilterModelObj,
  });

  SearchFilterModel? searchFilterModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;

  bool isCheckbox3;

  bool isCheckbox4;

  bool isCheckbox5;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        isCheckbox2,
        isCheckbox3,
        isCheckbox4,
        isCheckbox5,
        searchFilterModelObj,
      ];
  SearchFilterState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    bool? isCheckbox2,
    bool? isCheckbox3,
    bool? isCheckbox4,
    bool? isCheckbox5,
    SearchFilterModel? searchFilterModelObj,
  }) {
    return SearchFilterState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      isCheckbox2: isCheckbox2 ?? this.isCheckbox2,
      isCheckbox3: isCheckbox3 ?? this.isCheckbox3,
      isCheckbox4: isCheckbox4 ?? this.isCheckbox4,
      isCheckbox5: isCheckbox5 ?? this.isCheckbox5,
      searchFilterModelObj: searchFilterModelObj ?? this.searchFilterModelObj,
    );
  }
}
