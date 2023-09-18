import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:baburam_s_application5/presentation/bookmark_removal_bottomsheet/models/bookmark_removal_model.dart';
part 'bookmark_removal_event.dart';
part 'bookmark_removal_state.dart';

class BookmarkRemovalBloc
    extends Bloc<BookmarkRemovalEvent, BookmarkRemovalState> {
  BookmarkRemovalBloc(BookmarkRemovalState initialState) : super(initialState) {
    on<BookmarkRemovalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookmarkRemovalInitialEvent event,
    Emitter<BookmarkRemovalState> emit,
  ) async {}
}
