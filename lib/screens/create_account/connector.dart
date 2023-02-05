import 'package:chat_c7_str/base.dart';
import 'package:chat_c7_str/models/my_user.dart';

abstract class CreateAccountNavigator extends BaseNavigator {
  void goToHome(MyUser user);
}
