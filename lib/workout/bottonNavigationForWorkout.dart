import 'package:exam/health/health_app.dart';
import 'package:exam/workout/workout_app.dart';
import 'package:flutter/material.dart';

class BottomNavigationForWorkout extends StatefulWidget {
  const BottomNavigationForWorkout({Key? key}) : super(key: key);

  @override
  State<BottomNavigationForWorkout> createState() => _BottomNavigationForWorkoutState();
}

class _BottomNavigationForWorkoutState extends State<BottomNavigationForWorkout> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> widgetOptions =[
    const Scaffold(),
    const WorkOutApp(),
    const Scaffold(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff7F56D9),
        unselectedItemColor:Color(0xff667085) ,
        iconSize: 26,
        onTap: _onItemTapped,
        elevation: 0,

        items:  const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Today"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Insights"

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: "Chat"

          ),


        ],
      ),

    );
  }
}
