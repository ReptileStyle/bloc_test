import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_events.freezed.dart';

@freezed
class WelcomeEvents with _$WelcomeEvents{
  const factory WelcomeEvents.changePage(int page) = ChangePage;
}

