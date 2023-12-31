import 'package:flutter/foundation.dart';

//change notifier (log in true)
//this can get replaced if firebase is used
class LogInState extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void setTrue() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void setFalse() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
