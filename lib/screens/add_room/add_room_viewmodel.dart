import 'package:chat_c7_str/base.dart';
import 'package:chat_c7_str/database_utils/database_utils.dart';
import 'package:chat_c7_str/models/room.dart';
import 'package:chat_c7_str/screens/add_room/add_room_navigator.dart';

class AddRoomViewModel extends BaseViewModel<AddRoomNavigator> {
  void CreateRoom(String roomName, String roomDescription, String catId) {
    Room room = Room(
        roomName: roomName, roomDescription: roomDescription, catId: catId);
    DataBaseUtils.AddRoomToFirestore(room).then((value) {
      navigator!.roomCreated();
    }).catchError((error) {
      navigator!.showMessage(error.toString());
    });
  }
}
