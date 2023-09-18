// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

class SearchState extends Equatable {
  SearchState({
    this.searchbarController,
    this.searchModelObj,
  });

  TextEditingController? searchbarController;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        searchbarController,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? searchbarController,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      searchbarController: searchbarController ?? this.searchbarController,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
