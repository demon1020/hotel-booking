// ignore_for_file: must_be_immutable

part of 'filter_result_bloc.dart';

@immutable
abstract class FilterResultEvent extends Equatable {}

class FilterResultInitialEvent extends FilterResultEvent {
  @override
  List<Object?> get props => [];
}
