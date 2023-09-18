// ignore_for_file: must_be_immutable

part of 'search_type_bloc.dart';

class SearchTypeState extends Equatable {
  SearchTypeState({
    this.searchbarController,
    this.searchTypeModelObj,
  });

  TextEditingController? searchbarController;

  SearchTypeModel? searchTypeModelObj;

  @override
  List<Object?> get props => [
        searchbarController,
        searchTypeModelObj,
      ];
  SearchTypeState copyWith({
    TextEditingController? searchbarController,
    SearchTypeModel? searchTypeModelObj,
  }) {
    return SearchTypeState(
      searchbarController: searchbarController ?? this.searchbarController,
      searchTypeModelObj: searchTypeModelObj ?? this.searchTypeModelObj,
    );
  }
}
