import 'package:flutter/material.dart';
class EngineeringPage extends StatelessWidget {
  const EngineeringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

       appBar: AppBar(
        backgroundColor: Colors.blue,
     leading: IconButton(onPressed: (){
      Navigator.of(context).pop();
     }, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),),

      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("Flutter")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("Python")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("C++")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("C")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("UI Designing")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("HTML")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("CSS")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("Java")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("JavaScript")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("Computer Modeling And Simulation")
              ),
            ),
            Center(
              child: SizedBox(
                height: 90,
                width: 300,
                child: setSkill("Human Computer Interaction")
              ),
            ),
             
          ],
        ),
      )
      );
    
  }
}
Widget setSkill(String text){
  return Card(
     child: Padding(
      padding: const EdgeInsets.only(top: 25,left: 23),
       child: Text(
        text,
        style: const TextStyle(
          fontSize:20
        ),
       ),
     ),

  );
}
    