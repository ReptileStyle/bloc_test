import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent{
  const factory SignInEvent.onPasswordChanged(String value) = OnPasswordChanged;
  const factory SignInEvent.onEmailChanged(String value) = OnEmailChanged;
  const factory SignInEvent.onSignInClick() = OnSignInClick;
}