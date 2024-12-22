import 'package:flutter/material.dart';


import 'package:frontend/student_screens/courses_offered_screen.dart';
import 'package:frontend/student_screens/PracticeQuestionsScreen.dart';
import 'package:frontend/student_screens/student_home_screen.dart';

class BottomStudentNav extends StatefulWidget {
  @override
  _BottomStudentNavState createState() => _BottomStudentNavState();
}

class _BottomStudentNavState extends State<BottomStudentNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    StudentHomeScreen(),
    CoursesOfferedScreen(),
    PracticeQuestionsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Questions',
          ),
        ],
      ),
    );
  }
}
