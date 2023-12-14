import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/user_class.dart';
import 'package:provider/provider.dart';

class Settings_screen extends StatelessWidget {
  const Settings_screen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Row(
              children: [
                const Text(
                  'Username:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(context.watch<UserProvider>().userName),
                )
              ],
            ),
          ),
          TextFormField(
            controller: userNameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserName(newUserName: userNameController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                userNameController.clear();
              },
              child: Text('Save')),
        ],
      ),
    );
  }
}
