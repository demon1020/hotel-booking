// ignore_for_file: must_be_immutable

part of 'let_s_you_in_bloc.dart';

@immutable
abstract class LetSYouInEvent extends Equatable {}

class LetSYouInInitialEvent extends LetSYouInEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends LetSYouInEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends LetSYouInEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}
