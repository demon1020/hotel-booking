// ignore_for_file: must_be_immutable

part of 'filter_result_bloc.dart';

class FilterResultState extends Equatable {
  FilterResultState({
    this.searchbarController,
    this.filterResultModelObj,
  });

  TextEditingController? searchbarController;

  FilterResultModel? filterResultModelObj;

  @override
  List<Object?> get props => [
        searchbarController,
        filterResultModelObj,
      ];
  FilterResultState copyWith({
    TextEditingController? searchbarController,
    FilterResultModel? filterResultModelObj,
  }) {
    return FilterResultState(
      searchbarController: searchbarController ?? this.searchbarController,
      filterResultModelObj: filterResultModelObj ?? this.filterResultModelObj,
    );
  }
}
