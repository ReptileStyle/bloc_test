
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_events.freezed.dart';

@freezed
class AppEvents with _$AppEvents {
  const factory AppEvents.increment() = Increment;
  const factory AppEvents.decrement() = Decrement;
}