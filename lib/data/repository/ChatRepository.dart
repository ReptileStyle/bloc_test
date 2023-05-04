
import 'package:bloc_proj/data/repository/ChannelEventHandler.dart';
import 'package:sendbird_sdk/sdk/sendbird_sdk_api.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatRepository{
  static final ChatRepository _instanse = ChatRepository._internal();

  factory ChatRepository() {
    return _instanse;
  }

  ChatRepository._internal();

  final sendbird = SendbirdSdk(appId: "30E615B8-966B-4C0B-A296-03380C31152D");
  final sharedPreferences = SharedPrefs.instance.sharedPreferences;
  late ChannelEventHandlers channelEventHandler;

  User? get currentUser =>sendbird.currentUser;
  late BaseChannel currentChannel;

  Future<User> login({required String userId}) async{
    try{
      final user = await sendbird.connect(userId);
      return user;
    }catch(e){
      throw Exception([e,'Connecting with Sendbird Server has failed']);
    }
  }

  Future<void> logout() async {
    try {
      await sendbird.disconnect();
    } catch (e) {
      throw Exception([e, 'Disconnecting with Sendbird Server has failed']);
    }
  }

  Future<BaseChannel> setOpenChannel() async {
    try {
      // final channelUrl = sharedPreferences.getString("channelUrl2");
      final channelUrl = "sendbird_group_channel_258452897_7b9511c05f5bf12f4ef60178f662fe1f39c6143c";
      print(channelUrl);
      if (channelUrl == null) {
        print("before");
        print(sendbird.currentUser?.userId ?? "null user");
        currentChannel = await GroupChannel.createChannel(
            GroupChannelParams()
              ..userIds=[sendbird.currentUser!.userId,"2CYDs8IDefcI10kSaihYqqyROBl1"]
                ..operatorUserIds=[sendbird.currentUser!.userId]
                ..name="channel"
        );
        print("after");
        sharedPreferences.setString("channelUrl2", currentChannel.channelUrl);
        return currentChannel;
      } else {
        print("trying to get channel");
        print(sendbird.currentUser?.userId);
        currentChannel = await GroupChannel.getChannel(channelUrl);
        print("before return");
        return currentChannel;
      }
    }catch(e){
      print(e);
      rethrow;
    }
  }
  sendMessage({required String message, required BaseChannel channel}){
    final params = UserMessageParams(message: message);
    final preMessage = channel.sendUserMessage(params,onCompleted: (msg,error){
      channelEventHandler.messages.add(msg);
    });
  }

}
class SharedPrefs {
  SharedPrefs._privateConstructor();
  static final SharedPrefs _instance = SharedPrefs._privateConstructor();
  static SharedPrefs get instance => _instance;

  late final SharedPreferences sharedPreferences;
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }
}