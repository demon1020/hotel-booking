// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

class AddNewCardState extends Equatable {
  AddNewCardState({
    this.cardholdernameController,
    this.cardnumberController,
    this.expirydateController,
    this.cvvController,
    this.addNewCardModelObj,
  });

  TextEditingController? cardholdernameController;

  TextEditingController? cardnumberController;

  TextEditingController? expirydateController;

  TextEditingController? cvvController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        cardholdernameController,
        cardnumberController,
        expirydateController,
        cvvController,
        addNewCardModelObj,
      ];
  AddNewCardState copyWith({
    TextEditingController? cardholdernameController,
    TextEditingController? cardnumberController,
    TextEditingController? expirydateController,
    TextEditingController? cvvController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      cardholdernameController:
          cardholdernameController ?? this.cardholdernameController,
      cardnumberController: cardnumberController ?? this.cardnumberController,
      expirydateController: expirydateController ?? this.expirydateController,
      cvvController: cvvController ?? this.cvvController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
