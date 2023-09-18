// ignore_for_file: must_be_immutable

part of 'hotel_details_bloc.dart';

@immutable
abstract class HotelDetailsEvent extends Equatable {}

class HotelDetailsInitialEvent extends HotelDetailsEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends HotelDetailsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
