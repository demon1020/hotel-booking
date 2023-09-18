// ignore_for_file: must_be_immutable

part of 'refund_method_bloc.dart';

@immutable
abstract class RefundMethodEvent extends Equatable {}

class RefundMethodInitialEvent extends RefundMethodEvent {
  @override
  List<Object?> get props => [];
}
