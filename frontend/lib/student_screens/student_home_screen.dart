import 'package:flutter/material.dart';

import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/1_Rich_dad.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/2_psychology_of_money.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/3_bhagwat_gita.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/4_power_of_concentration.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/5_how_to_control_emotions.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/6_train_your_brain_to_think_better.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/7_cant_hurt_me.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/8_the_richest_man_in_babylon.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/9_how_lifestyle_affecting_inflation.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/10_master_the_art_of_wealth.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/11_the_art_of_war.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/12_thinking_in_algorithms.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/13_shiv_bhagwan.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/14_how_to_win_friends.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/15_brain_on_porn.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/16_the_art_of_winning.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/17_teach_brain_hardthings.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/18_the_art_of_seduction.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/19_deep_work.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/20_DontBelive.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/21_psychology_of_success.dart';
import 'package:frontend/student_screens/Audio_Screens/1_Audio_Main_Screens/22_how_to_attract_money.dart';

class StudentHomeScreen extends StatefulWidget {
  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  // List of audiobooks
  final List<Map<String, dynamic>> audiobooks = [
    {'name': 'Rich Dad Poor Dad', 'icon': Icons.school_rounded},
    {'name': 'Psychology of Money', 'icon': Icons.school_rounded},
    {'name': 'Bhagwat Gita', 'icon': Icons.school_rounded},
    {'name': 'Power of Concentration', 'icon': Icons.school_rounded},
    {'name': 'How to Control Your Emotions', 'icon': Icons.school_rounded},
    {'name': 'Train Your Brain to Think Better', 'icon': Icons.school_rounded},
    {'name': "Can't Hurt Me", 'icon': Icons.school_rounded},
    {'name': 'The Richest Man in Babylon', 'icon': Icons.school_rounded},
    {'name': 'How Lifestyle is affecting Inflation', 'icon': Icons.school_rounded},
    {'name': 'Master The Art Of Wealth', 'icon': Icons.school_rounded},
    {'name': 'The Art of War', 'icon': Icons.school_rounded},
    {'name': 'Thinking in Algorithms', 'icon': Icons.school_rounded},
    {'name': 'Shiv Bhagwan', 'icon': Icons.school_rounded},
    {'name': 'How to Win Friends and Influence People', 'icon': Icons.school_rounded},
    {'name': 'Brain on Porn', 'icon': Icons.school_rounded},
    {'name': 'The Art of Winning', 'icon': Icons.school_rounded},
    {'name': 'Teach Your Brain To Do Hard Things', 'icon': Icons.school_rounded},
    {'name': 'The Art of Seduction', 'icon': Icons.school_rounded},
    {'name': 'Deep Work', 'icon': Icons.school_rounded},
    {'name': "Don't Believe in Everything You See", 'icon': Icons.school_rounded},
    {'name': 'Psychology of Success', 'icon': Icons.school_rounded},
    {'name': 'How To Attract Money', 'icon': Icons.school_rounded},
  ];

  // Method to navigate to the respective screen
  void _navigateToScreen(String audiobookName) {
    Widget screen;
    switch (audiobookName) {
      case 'Rich Dad Poor Dad':
        screen = RichDad();
        break;
      case 'Psychology of Money':
        screen = PsychologyOfMoney();
        break;
      case 'Bhagwat Gita':
        screen = BhagwatGita();
        break;
      case 'Power of Concentration':
        screen = PowerOfConcentration();
        break;
      case 'How to Control Your Emotions':
        screen = HowToControlEmotions();
        break;
      case 'Train Your Brain to Think Better':
        screen = TrainBrainThinkBetter();
        break;
      case "Can't Hurt Me":
        screen = CantHurtMe();
        break;
      case 'The Richest Man in Babylon':
        screen = TheRichestManInBabylon();
        break;
      case 'How Lifestyle is affecting Inflation':
        screen = HowLiftStyleAffectingInflation();
        break;
      case 'Master The Art Of Wealth':
        screen = MasterTheArtOfWealth();
        break;
      case 'The Art of War':
        screen = TheArtOfWar();
        break;
      case 'Thinking in Algorithms':
        screen = ThinkingInAlgorithms();
        break;
      case 'Shiv Bhagwan':
        screen = ShivBhagwan();
        break;
      case 'How to Win Friends and Influence People':
        screen = HowToWinFriends();
        break;
      case 'Brain on Porn':
        screen = BrainOnPorn();
        break;
      case 'The Art of Winning':
        screen = TheArtOfWinning();
        break;
      case 'Teach Your Brain To Do Hard Things':
        screen = TeachBrainHardThings();
        break;
      case 'The Art of Seduction':
        screen = TheArtOfSeduction();
        break;
      case 'Deep Work':
        screen = DeepWork();
        break;
      case "Don't Believe in Everything You See":
        screen = DontBeliveEverything();
        break;
      case 'Psychology of Success':
        screen = PsychologyOfSuccess();
        break;
      // case 'How To Attract Money':
      //   screen = HowToAttractMoney();
      //   break;
      default:
        screen = PlaceholderScreen();
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // Welcome Section
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome, User!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "MainFont",
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We are glad to have you here.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Audio Libraries with more than 20+ Books',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Audio Library Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: audiobooks.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => _navigateToScreen(audiobooks[index]['name']),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              audiobooks[index]['icon'],
                              size: 40,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(height: 10),
                            Text(
                              audiobooks[index]['name'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: Center(
        child: Text('Audiobook screen is under development.'),
      ),
    );
  }
}
