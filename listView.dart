import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: must_be_immutable
class AnimationList extends StatelessWidget {
   AnimationList({super.key});
List<String> myList = [
'Flutter',
'Flutter',
'Flutter',
'Flutter',
'Flutter',
'Flutter',
'Flutter',
'Flutter',
'Flutter',
]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      backgroundColor: Colors.orange,

      ),
      body:Column(
        children: [
          ListView.builder(
            itemCount: myList.length,
            itemBuilder: (context,index){
              key: myList[index];
              return Container(
                height:200,
                width:200,
                
                child: Text(myList[index]),);
            })
        ],
      )
    );
  }
}