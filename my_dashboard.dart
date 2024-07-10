import 'package:flutter/material.dart';
import 'package:project/portfolio/education_page.dart';
import 'package:project/portfolio/engineering_page.dart';
import 'package:project/portfolio/food_page.dart';
import 'package:project/portfolio/hobby_page.dart';
import 'package:project/portfolio/profile_page.dart';
import 'package:project/portfolio/work_page.dart';
class MyDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 40),
                    bottomRight: Radius.elliptical(200, 44),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 80,
                    left: 20,
                  ),
                  child: Text(
                    'My Dashboard',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: 40,
            top: 140,
            child: Column(
              children: [
                Row(
                  children: [
                    _buildSkillContainer(context, Icons.person, 'Profile', ProfilePage()),
                    const SizedBox(width: 23),
                    _buildSkillContainer(context, Icons.work, 'Work', WorkPage()),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    _buildSkillContainer(context, Icons.engineering, 'Skills', EngineeringPage()),
                    const SizedBox(width: 23),
                    _buildSkillContainer(context, Icons.school, 'Education', EducationPage()),
                  ],
                ),
                const SizedBox(height: 23),
                Row(
                  children: [
                    _buildSkillContainer(context, Icons.favorite_rounded, 'Hobby', HobbyPage()),
                   
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillContainer(BuildContext context, IconData icon, String label, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.blue,
              size: 50,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
