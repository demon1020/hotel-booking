// ignore_for_file: must_be_immutable

part of 'bookmark_removal_bloc.dart';

@immutable
abstract class BookmarkRemovalEvent extends Equatable {}

class BookmarkRemovalInitialEvent extends BookmarkRemovalEvent {
  @override
  List<Object?> get props => [];
}
