// ignore_for_file: must_be_immutable

part of 'notification_settings_bloc.dart';

@immutable
abstract class NotificationSettingsEvent extends Equatable {}

class NotificationSettingsInitialEvent extends NotificationSettingsEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends NotificationSettingsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch1Event extends NotificationSettingsEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch2Event extends NotificationSettingsEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch3Event extends NotificationSettingsEvent {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch4Event extends NotificationSettingsEvent {
  ChangeSwitch4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch5Event extends NotificationSettingsEvent {
  ChangeSwitch5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
