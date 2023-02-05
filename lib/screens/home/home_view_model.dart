import 'package:chat_c7_str/base.dart';
import 'package:chat_c7_str/database_utils/database_utils.dart';
import 'package:chat_c7_str/screens/home/home_navigator.dart';

import '../../models/room.dart';

class HomeViewModel extends BaseViewModel<HomeNavigator> {
  List<Room> rooms = [];

  void getRooms() {
    DataBaseUtils.getRoomsFromFirestore().then((value) {
      rooms = value;
    });
  }
}
