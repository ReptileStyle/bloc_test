import 'package:bloc_proj/pages/welcome/bloc/welcome_events.dart';
import 'package:bloc_proj/pages/welcome/bloc/welcome_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeBloc extends Bloc<WelcomeEvents,WelcomeStates>{
  WelcomeBloc():super(WelcomeStates()){
    on<ChangePage>((event,emit){
      emit(state.copyWith(page: event.page));
    });
  }
}