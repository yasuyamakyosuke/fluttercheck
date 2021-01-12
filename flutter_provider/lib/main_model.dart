
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String arupakaText = "みんなに唾をはくよ";

  void changeArupakaText() {
    arupakaText = "夏は毛がありません";
    notifyListeners();
  }
}