import 'package:chat_c7_str/base.dart';
import 'package:chat_c7_str/database_utils/database_utils.dart';
import 'package:chat_c7_str/models/message.dart';
import 'package:chat_c7_str/models/my_user.dart';
import 'package:chat_c7_str/models/room.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatViewModel extends BaseViewModel<ChatNavigator> {
  late Room room;
  late MyUser myUser;

  void sendMessage(String content) {
    if (content.trim().isEmpty) return;
    Message message = Message(
        content: content,
        dateTime: DateTime.now().millisecondsSinceEpoch,
        senderId: myUser.id,
        senderName: myUser.userName,
        roomId: room.id);
    DataBaseUtils.addMessageToFirestore(message).then((value) {
      navigator!.clearMessage();
    }).catchError((error) {
      navigator!.showMessage(error.toString());
    });
  }

  Stream<QuerySnapshot<Message>> getMessages() {
    return DataBaseUtils.readMessagesFromFirestore(room.id);
  }
}

abstract class ChatNavigator extends BaseNavigator {
  void clearMessage();
}
