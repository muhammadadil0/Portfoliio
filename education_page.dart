import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Education',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(color: Colors.white, Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
            child: setContainer('School', 'Al Muslim Public School (APS)', Icons.school_outlined),
          ),
          const SizedBox(
            height: 10,
          ),
           Card(
            child: setContainer('College', 'University College for Boys (UCB)', Icons.school_outlined),
          ),
          const SizedBox(
            height: 10,
          ),
           Card(
            child: setContainer('University', 'FAST (NUCES) Peshawar', Icons.school),
          ),

        ],
      ),
    );
  }
}

Widget setContainer(String text1, String text2, IconData icon) {
  return Row(
    children: [
      Icon(icon,
      color: Colors.blue,
      size: 31,
      ),
      const SizedBox(width: 8), // Add some space between the icon and the ListTile
      Expanded(
        child: ListTile(
          title: Text(text1,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 21
          ),
          ),
          subtitle: Text(text2),
        ),
      ),
    ],
  );
}
