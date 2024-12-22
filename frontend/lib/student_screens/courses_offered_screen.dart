import 'package:flutter/material.dart';
import 'package:frontend/student_screens/Ethical_hacking_and_Stock_market_Screens/ethical_hacking.dart';
import 'package:frontend/student_screens/Ethical_hacking_and_Stock_market_Screens/stock_market.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/See_Bridge_Course_Main.dart';
import 'package:frontend/student_screens/See_Bridge_Course_Screens/screens/physics_screen.dart';

class VideoModel {
  final String title;
  final String url;

  VideoModel({required this.title, required this.url});
}

class CoursesOfferedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent, // Fixed AppBar background color
        foregroundColor: Colors.white, // Fixed AppBar text color
        title: Text(
          'Courses Offered',
          style: TextStyle(
            fontFamily: "FontMain",
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0, // Remove shadow to prevent color changes on scroll
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container for Bridge Course
            buildCourseContainer(
              "SEE BRIDGE COURSE",
              "Prepare yourself with foundational knowledge.",
              [
                "- Comprehensive course content",
                "- Interactive learning modules",
                "- Expert instructors",
                "- Low price, high quality",
                "- Best affordable courses",
              ],
              "Explore Courses",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeeBridgeCourseMain(),
                  ),
                );
              },
            ),

            // Container for Stock Market Course
            buildCourseContainer(
              "STOCK MARKET COURSE",
              "Prepare yourself with expert knowledge in Stock Market.",
              [
                "- Comprehensive stock market courses",
                "- Interactive trading simulations",
                "- Expert instructors in finance",
                "- Affordable pricing with high quality",
                "- Premium courses for advanced traders",
              ],
              "Explore Stock Courses",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StockMarketScreen(),
                  ),
                );
              },
            ),

            // Container for Ethical Hacking Course
            buildEthicalHackingContainer(
              "ETHICAL HACKING COURSE",
              "Master the art of ethical hacking.",
              [
                "- Hands-on hacking exercises",
                "- Practical security testing techniques",
                "- Certified instructors in cybersecurity",
                "- Learn offensive and defensive strategies",
                "- Explore real-world case studies",
              ],
              "Explore Hacking Courses",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EthicalHackingScreen(),
                  ),
                );
              },
            ),

            // Container for "Many Courses Will Come" text
            buildSimpleContainer(
              "Many Courses Will Come",
              "Stay tuned for more exciting courses!",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCourseContainer(String title, String description,
      List<String> features, String buttonText, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MainFont",
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[800],
                    fontFamily: "MainFont",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Features:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: features
                      .map((feature) => Text(
                    feature,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ))
                      .toList(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "MainFont",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }




  Widget buildSimpleContainer(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "MainFont",
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEthicalHackingContainer(String title, String description,
      List<String> features, String buttonText, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MainFont",
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[800],
                    fontFamily: "MainFont",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Features:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: features
                      .map((feature) => Text(
                    feature,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ))
                      .toList(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontFamily: "MainFont",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
