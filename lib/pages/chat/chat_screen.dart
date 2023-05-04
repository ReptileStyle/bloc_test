import 'package:auto_route/annotations.dart';
import 'package:bloc_proj/data/repository/ChatRepository.dart';
import 'package:bloc_proj/pages/chat/bloc/chat_bloc.dart';
import 'package:bloc_proj/pages/chat/bloc/chat_event.dart';
import 'package:bloc_proj/pages/chat/bloc/chat_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sendbird_sdk/core/channel/base/base_channel.dart';
import 'package:sendbird_sdk/core/channel/open/open_channel.dart';
import 'package:sendbird_sdk/handlers/channel_event_handler.dart';

import '../../data/repository/ChannelEventHandler.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatRepository chatRepository = ChatRepository();
  ChannelEventHandlers get channelEventHandler => chatRepository.channelEventHandler;

  late Future<BaseChannel> myChannel;

  @override
  initState() {
    myChannel = chatRepository.setOpenChannel().then((channel)
    async {
      chatRepository.channelEventHandler = ChannelEventHandlers(
          channelUrl: chatRepository.currentChannel.channelUrl,
          channelType: chatRepository.currentChannel.channelType,);
      await channelEventHandler.loadMessages(isForce: true);
      channelEventHandler.messages.changes.listen((event) {setState(() {});});
      return channel;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(),
        child: FutureBuilder(
            future: myChannel,
            builder: (context, AsyncSnapshot<BaseChannel> channel) {
              if (channel.hasData) {
                return Scaffold(
                  body: Scaffold(
                    appBar: chatAppBar(
                      title: 'Chat Room',
                    ),
                    bottomNavigationBar: messageField(),
                    body: messageList(),
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  Widget messageList() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            itemCount: channelEventHandler.messages.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder:(BuildContext context, int index){
              Widget? titleWidget;
              titleWidget = Text(
                channelEventHandler.messages[index].message,
                textAlign: channelEventHandler
                    .messages[index].sender?.userId ==
                    chatRepository.sendbird.currentUser?.userId
                    ? TextAlign.right
                    : TextAlign.left,
              );
              return ListTile(
                leading: channelEventHandler
                    .messages[index].sender?.userId ==
                    chatRepository.sendbird.currentUser?.userId
                    ? null
                    : const Icon(Icons.person),
                trailing: channelEventHandler
                    .messages[index].sender?.userId ==
                    chatRepository.sendbird.currentUser?.userId
                    ? const Icon(Icons.person)
                    : null,
                title: titleWidget,
                subtitle: Text(
                  '${channelEventHandler
                      .messages[index].createdAt}',
                  textAlign: channelEventHandler
                      .messages[index]
                      .sender
                      ?.userId ==
                      chatRepository.sendbird
                          .currentUser?.userId
                      ? TextAlign.right
                      : TextAlign.left,
                ),
              );
            }
        ),
      ),
    );
  }

  Widget messageField() {
    return BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
      return TextField(
        onChanged: (str) {
          BlocProvider.of<ChatBloc>(context)
              .add(ChatEvent.onMessageChanged(str));
        },
        keyboardType: TextInputType.multiline,
        minLines: 1,
        //Normal textInputField will be displayed
        maxLines: 7,
        // when user presses enter it will adapt to it
        decoration: InputDecoration(
            prefixIcon: IconButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: "not implemented yet");
                },
                icon: const Icon(Icons.attach_file)),
            hintText: "Ваше сообщение",
            suffixIcon: IconButton(
                onPressed: () {
                  BlocProvider.of<ChatBloc>(context)
                      .add(const ChatEvent.onSendMessageClick());
                },
                icon: const Icon(Icons.send))),
      );
    });
  }

  PreferredSizeWidget chatAppBar(
      {required String title, List<Widget>? actions}) {
    return AppBar(
      centerTitle: false,
      actions: actions,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
  // Future<void> refresh({
  //   bool loadPrevious = false,
  //   bool isForce = false,
  // }) async {
  //   if (loadPrevious) {
  //     channelEventHandler.loadMessages();
  //   } else if (isForce) {
  //     channelEventHandler.loadMessages(isForce: true);
  //   }
  //   setState(() {});
  // }

}
