





import 'package:bloc_proj/data/repository/ChatRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_event.dart';
import 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent,ChatState>{
  final ChatRepository chatRepository = ChatRepository();

  ChatBloc():super(ChatState()) {
    on<OnMessageChanged>((event, emit){
      emit(state.copyWith(currentMessage:event.value));
    });
    on<OnSendMessageClick>((event, emit){
        chatRepository.sendMessage(message: state.currentMessage, channel: chatRepository.currentChannel);
    });
  }
}