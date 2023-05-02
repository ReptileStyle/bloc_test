import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_states.freezed.dart';

@freezed
class WelcomeStates with _$WelcomeStates {
  const factory WelcomeStates({
    @Default(0) int page
}) = _WelcomeStates;
}