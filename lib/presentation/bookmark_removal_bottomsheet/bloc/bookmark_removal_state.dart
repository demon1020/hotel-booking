// ignore_for_file: must_be_immutable

part of 'bookmark_removal_bloc.dart';

class BookmarkRemovalState extends Equatable {
  BookmarkRemovalState({this.bookmarkRemovalModelObj});

  BookmarkRemovalModel? bookmarkRemovalModelObj;

  @override
  List<Object?> get props => [
        bookmarkRemovalModelObj,
      ];
  BookmarkRemovalState copyWith(
      {BookmarkRemovalModel? bookmarkRemovalModelObj}) {
    return BookmarkRemovalState(
      bookmarkRemovalModelObj:
          bookmarkRemovalModelObj ?? this.bookmarkRemovalModelObj,
    );
  }
}
