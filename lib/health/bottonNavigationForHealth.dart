import 'package:exam/health/health_app.dart';
import 'package:flutter/material.dart';

class BottomNavigationForHealth extends StatefulWidget {
  const BottomNavigationForHealth({Key? key}) : super(key: key);

  @override
  State<BottomNavigationForHealth> createState() => _BottomNavigationForHealthState();
}

class _BottomNavigationForHealthState extends State<BottomNavigationForHealth> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  List<Widget> widgetOptions =[
    const HealthApp(),
    const Scaffold(),
    const Scaffold(),
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
        selectedItemColor: const Color(0xff027A48),
        iconSize: 26,
        onTap: _onItemTapped,
        elevation: 0,

        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,color: Color(0xff667085),),
            activeIcon: Column(
              children: [
                Icon(Icons.home_filled),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xff027A48),
                )
              ],
            ),
            backgroundColor: Colors.blue,
              label: ""

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category,color: Color(0xff667085),),
              activeIcon: Column(
                children: [
                  Icon(Icons.category),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xff027A48),
                  )
                ],
              ),
              backgroundColor: Colors.blue,
              label: ""

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,color: Color(0xff667085),),
              activeIcon: Column(
                children: [
                  Icon(Icons.calendar_today),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xff027A48),
                  )
                ],
              ),
              backgroundColor: Colors.blue,
              label: ""

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp,color: Color(0xff667085),),
              activeIcon: Column(
                children: [
                  Icon(Icons.person_outline_sharp),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xff027A48),
                  )
                ],
              ),
              backgroundColor: Colors.blue,
              label: ""

          ),


        ],
      ),

    );
  }
}
