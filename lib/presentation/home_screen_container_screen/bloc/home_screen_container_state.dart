// ignore_for_file: must_be_immutable

part of 'home_screen_container_bloc.dart';

class HomeScreenContainerState extends Equatable {
  HomeScreenContainerState({
    this.id,
    this.homeScreenContainerModelObj,
  });

  HomeScreenContainerModel? homeScreenContainerModelObj;

  var id;

  @override
  List<Object?> get props => [
        id,
        homeScreenContainerModelObj,
      ];
  HomeScreenContainerState copyWith({
    var id,
    HomeScreenContainerModel? homeScreenContainerModelObj,
  }) {
    return HomeScreenContainerState(
      id: id ?? this.id,
      homeScreenContainerModelObj:
          homeScreenContainerModelObj ?? this.homeScreenContainerModelObj,
    );
  }
}
