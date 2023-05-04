import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_event.freezed.dart';



@freezed
class ChatEvent with _$ChatEvent{
  const factory ChatEvent.onMessageChanged(String value) = OnMessageChanged;
  const factory ChatEvent.onSendMessageClick() = OnSendMessageClick;
}