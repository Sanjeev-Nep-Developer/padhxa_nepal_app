import 'package:flutter/material.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/screens/biology_screen.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/screens/chemistry_screen.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/screens/english_screen.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/screens/math_screen.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/screens/physics_screen.dart';

class SeeBridgeCourseMain extends StatefulWidget {
  @override
  _SeeBridgeCourseMainState createState() => _SeeBridgeCourseMainState();
}

class _SeeBridgeCourseMainState extends State<SeeBridgeCourseMain> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),

              // Heading Container
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SEE BRIDGE COURSE',
                      style: TextStyle(
                        fontFamily: 'MainFont',
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),

                    // Subheading
                    Text(
                      'Features',
                      style: TextStyle(
                        fontFamily: 'MainFont',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),

                    // Horizontally scrollable features containers with borders
                    SizedBox(
                      height: 80.0,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: _scrollController,
                        child: Row(
                          children: [
                            buildFeatureContainer(CourseFeature('Interactive', Icons.touch_app, 'MainFont')),
                            buildFeatureContainer(CourseFeature('Engaging', Icons.star, 'MainFont')),
                            buildFeatureContainer(CourseFeature('Informative', Icons.info, 'MainFont')),
                            buildFeatureContainer(CourseFeature('Practical', Icons.build, 'MainFont')),
                            buildFeatureContainer(CourseFeature('Comprehensive', Icons.library_books, 'MainFont')),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10.0),

                    // Scroll hint
                    Text(
                      'Scroll horizontally for more',
                      style: TextStyle(
                        fontFamily: 'MainFont',
                        fontSize: 12.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.0),

              // Course Items with smaller text
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  // buildCourseItem(context, 'Science', Icons.science, 'MainFont'),
                  buildCourseItem(context, 'Math', Icons.calculate, 'MainFont'),
                  buildCourseItem(context, 'English', Icons.book, 'MainFont'),
                  buildCourseItem(context, 'Biology', Icons.eco, 'MainFont'),
                  buildCourseItem(context, 'Chemistry', Icons.science_outlined, 'MainFont'),
                  buildCourseItem(context, 'Physics', Icons.science_sharp, 'MainFont'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFeatureContainer(CourseFeature feature) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,  // Ensure the background is white to avoid transparency issues
        border: Border.all(color: Colors.blueAccent, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 2.0),
          ),
        ],
      ),
      child: feature,
    );
  }
}

class CourseFeature extends StatelessWidget {
  final String featureName;
  final IconData iconData;
  final String fontFamily;

  CourseFeature(this.featureName, this.iconData, this.fontFamily);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: Colors.blueAccent,
        ),
        SizedBox(width: 5.0),
        Text(
          featureName,
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}

Widget buildCourseItem(BuildContext context, String courseName, IconData iconData, String fontFamily) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 2.0),
        ),
      ],
    ),
    child: ListTile(
      leading: Icon(
        iconData,
        color: Colors.blueAccent,
      ),
      title: Text(
        courseName,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      trailing: ElevatedButton(
        onPressed: () {
          // Add navigation logic for each course item
          if (courseName == 'Physics') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PhysicsScreen()),
            );
          }else if(courseName == 'Math'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MathScreen()),
            );
          }else if(courseName == 'English'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EnglishScreen()),
            );
          }else if(courseName == 'Biology'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BiologyScreen()),
            );
          }else if(courseName == 'Chemistry'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChemistryScreen()),
            );
          }
        },
        child: Text(
          'Watch',
          style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
