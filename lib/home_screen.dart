import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_class.dart';
import 'package:provider/provider.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.lightGreenAccent,
          title: Text("Provider"),
        ),
        body: Center(
          child: Text(
            context.watch<UserProvider>().userName,
          )
        ),
      ),
    );
  }
}
