// ignore_for_file: must_be_immutable

part of 'search_type_bloc.dart';

@immutable
abstract class SearchTypeEvent extends Equatable {}

class SearchTypeInitialEvent extends SearchTypeEvent {
  @override
  List<Object?> get props => [];
}
