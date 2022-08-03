import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,      
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          label: 'Calendario' ,
          icon: Icon(Icons.calendar_today_outlined)
          ),
           BottomNavigationBarItem(
            label: 'Calendario2',
          icon: Icon(Icons.pie_chart_outline)
          ),
           BottomNavigationBarItem(
            label: 'Calendario3',
          icon: Icon(Icons.supervised_user_circle_outlined)
          ),
      ],   
      );
    
 }
}