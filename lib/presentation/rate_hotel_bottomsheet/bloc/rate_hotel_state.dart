// ignore_for_file: must_be_immutable

part of 'rate_hotel_bloc.dart';

class RateHotelState extends Equatable {
  RateHotelState({this.rateHotelModelObj});

  RateHotelModel? rateHotelModelObj;

  @override
  List<Object?> get props => [
        rateHotelModelObj,
      ];
  RateHotelState copyWith({RateHotelModel? rateHotelModelObj}) {
    return RateHotelState(
      rateHotelModelObj: rateHotelModelObj ?? this.rateHotelModelObj,
    );
  }
}
