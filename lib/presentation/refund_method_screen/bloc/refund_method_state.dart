// ignore_for_file: must_be_immutable

part of 'refund_method_bloc.dart';

class RefundMethodState extends Equatable {
  RefundMethodState({this.refundMethodModelObj});

  RefundMethodModel? refundMethodModelObj;

  @override
  List<Object?> get props => [
        refundMethodModelObj,
      ];
  RefundMethodState copyWith({RefundMethodModel? refundMethodModelObj}) {
    return RefundMethodState(
      refundMethodModelObj: refundMethodModelObj ?? this.refundMethodModelObj,
    );
  }
}
