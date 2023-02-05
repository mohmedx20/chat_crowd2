import 'package:chat_c7_str/base.dart';
import 'package:chat_c7_str/models/my_user.dart';

abstract class LoginNavigator extends BaseNavigator {
  void goToHome(MyUser user);
}
