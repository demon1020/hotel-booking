// ignore_for_file: must_be_immutable

part of 'my_bookmarks_bloc.dart';

@immutable
abstract class MyBookmarksEvent extends Equatable {}

class MyBookmarksInitialEvent extends MyBookmarksEvent {
  @override
  List<Object?> get props => [];
}
