import 'package:flutter/material.dart';
import 'package:project/portfolio/my_dashboard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
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
                    'Profile Page',
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
            top: 130,
            left: 80,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvXfssIdTwz2Am6nJYyoPv5-b00MPJ0m1Q4Q&s"),
                  ),
                ),
                const Text(
                  'Muhammad Adil',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                const Center(
                  child: Text(
                    'Sher Garh , Mardan Pakistan',
                    style: TextStyle(
                      color: Color.fromARGB(255, 111, 109, 109),
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      color: const Color.fromARGB(77, 236, 234, 234),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: buildMessage("Email", Icons.message, "adilraxiq64@gmail.com"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      color: const Color.fromARGB(77, 236, 234, 234),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: buildMessage("Phone", Icons.call, "03160925561")
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: SafeArea(
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        color: const Color.fromARGB(77, 236, 234, 234),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: buildMessage("Address", Icons.location_on, "Ghulam Habib Banda , SherGarh Takhsil Takht Bhia , Mardan")
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildMessage(String text, IconData icon, String text1) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Icon(icon)
          ),
          const SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 40, top: 0,),
        child: Text(
          text1,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500
          ),
          
        ),
      ),
    ],
  );
}
