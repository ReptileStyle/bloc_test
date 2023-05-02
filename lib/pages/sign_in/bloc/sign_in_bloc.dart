







import 'package:flutter_bloc/flutter_bloc.dart';


import 'sign_in_event.dart';
import 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent,SignInState>{
  SignInBloc():super(SignInState()){
    on<OnPasswordChanged>((event,emit){
      emit(state.copyWith(password: event.value));
    });
    on<OnEmailChanged>((event,emit){
      emit(state.copyWith(email: event.value));
    });
    on<OnSignInClick>((event,emit){
      print("sign in clicked");
    });
  }
}