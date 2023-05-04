import 'package:bloc_proj/data/repository/ChatRepository.dart';
import 'package:bloc_proj/navigation/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sendbird_sdk/sdk/sendbird_sdk_api.dart';

import 'sign_in_event.dart';
import 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<OnPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.value));
    });
    on<OnEmailChanged>((event, emit) {
      emit(state.copyWith(email: event.value));
    });
    on<OnSignInClick>((event, emit) async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: state.email, password: state.password);
        ChatRepository()
            .login(userId: userCredential.user?.uid ?? "anon")
            .then((value) => event.appRouter.replace(ChatRoute()));
      } on FirebaseAuthException catch (e) {
        Fluttertoast.showToast(msg: e.message ?? "Failed to sign in");
      }
    });
    on<OnAppleSignInClick>((event, emit) async {
      Fluttertoast.showToast(msg: "Not implemented yet");
    });
    on<OnGoogleSignInClick>((event, emit) async {
      Fluttertoast.showToast(msg: "Not implemented yet");
    });
    on<OnFacebookSignInClick>((event, emit) async {
      Fluttertoast.showToast(msg: "Not implemented yet");
    });
    on<OnRegisterClick>((event, emit) async {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: state.email, password: state.password);
      } on FirebaseAuthException catch (e) {
        Fluttertoast.showToast(msg: e.message ?? "Failed to register");
      }
      //make redirect to next screen + send toast
    });
  }
}
