import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottombar.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/user_class.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=>UserProvider(),)
      ],
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(
          
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: bottombar()
      ),
    );
  }
}

