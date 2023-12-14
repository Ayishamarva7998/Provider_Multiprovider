
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/settings_screen.dart';




class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
 int myindex = 0; 

final pages = [
Home_screen(),
Settings_screen()



  
];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[myindex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              myindex =index;
            });
          },
          currentIndex: myindex,
          items: [
          
          
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home,color: myindex==0?Colors.black:Colors.grey,),label: 'Home',),
             BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: myindex==1?Colors.black:Colors.grey,),label: 'Settings'), 
            
        ]),
        
       
        )
    
          
        );
        
        
    
      
    
  }
}