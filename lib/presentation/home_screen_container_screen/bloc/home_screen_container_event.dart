// ignore_for_file: must_be_immutable

part of 'home_screen_container_bloc.dart';

@immutable
abstract class HomeScreenContainerEvent extends Equatable {}

class HomeScreenContainerInitialEvent extends HomeScreenContainerEvent {
  @override
  List<Object?> get props => [];
}
