import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  bool showDrawer = true;

  void toggleDrawer() {
    showDrawer = !showDrawer;
    print(showDrawer);
    notifyListeners();
  }
}
