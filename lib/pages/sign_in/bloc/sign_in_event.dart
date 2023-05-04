import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent{
  const factory SignInEvent.onPasswordChanged(String value) = OnPasswordChanged;
  const factory SignInEvent.onEmailChanged(String value) = OnEmailChanged;
  const factory SignInEvent.onSignInClick(StackRouter appRouter) = OnSignInClick;
  const factory SignInEvent.onRegisterClick() = OnRegisterClick;
  const factory SignInEvent.onAppleSignInClick() = OnAppleSignInClick;
  const factory SignInEvent.onGoogleSignInClick() = OnGoogleSignInClick;
  const factory SignInEvent.onFacebookSignInClick() = OnFacebookSignInClick;
}