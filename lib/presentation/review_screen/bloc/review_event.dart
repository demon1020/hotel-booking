// ignore_for_file: must_be_immutable

part of 'review_bloc.dart';

@immutable
abstract class ReviewEvent extends Equatable {}

class ReviewInitialEvent extends ReviewEvent {
  @override
  List<Object?> get props => [];
}
