import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  String userName;
      TextEditingController userNameController = TextEditingController();


  UserProvider({
    this.userName = "Mapp"
  });

  void changeUserName({
    required String newUserName,
  }) async{
    userName =newUserName;
    notifyListeners();
  }
}