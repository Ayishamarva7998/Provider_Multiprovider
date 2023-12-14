import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/user_class.dart';
import 'package:provider/provider.dart';

class Settings_screen extends StatelessWidget {
  const Settings_screen ({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController =TextEditingController();
    return Scaffold(
      
      appBar: AppBar(title: Text('Settings'),backgroundColor: Colors.lightGreenAccent,),
           body: Column(
            children: [
              Row(
                children: [
                  Text('Username:'),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(context.watch<UserProvider>().userName),
                  )
                ],
              ),
              SizedBox(height: 10,),
              TextField(controller: userNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  context.read<UserProvider>().changeUserName(newUserName: userNameController.text);
                  FocusManager.instance.primaryFocus?.unfocus();
                  userNameController.clear();

                }, 
                child: Text('Save'))
              
            ],
           ),
    );
  }
}