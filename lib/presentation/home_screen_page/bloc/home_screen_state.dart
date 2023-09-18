// ignore_for_file: must_be_immutable

part of 'home_screen_bloc.dart';

class HomeScreenState extends Equatable {
  HomeScreenState({
    this.searchBarController,
    this.homeScreenModelObj,
  });

  TextEditingController? searchBarController;

  HomeScreenModel? homeScreenModelObj;

  @override
  List<Object?> get props => [
        searchBarController,
        homeScreenModelObj,
      ];
  HomeScreenState copyWith({
    TextEditingController? searchBarController,
    HomeScreenModel? homeScreenModelObj,
  }) {
    return HomeScreenState(
      searchBarController: searchBarController ?? this.searchBarController,
      homeScreenModelObj: homeScreenModelObj ?? this.homeScreenModelObj,
    );
  }
}
