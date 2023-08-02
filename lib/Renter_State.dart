import 'package:flutter/foundation.dart';

//change notifier (log in true)
class RenterState extends ChangeNotifier {
  bool _isRenter = false;

  bool get isRenter => _isRenter;

  void setTrue() {
    _isRenter = true;
    notifyListeners();
  }

  void setFalse() {
    _isRenter = false;
    notifyListeners();
  }
}
