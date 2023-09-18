// ignore_for_file: must_be_immutable

part of 'home_screen_bloc.dart';

@immutable
abstract class HomeScreenEvent extends Equatable {}

class HomeScreenInitialEvent extends HomeScreenEvent {
  @override
  List<Object?> get props => [];
}
