import 'package:flutter/material.dart';
import 'package:starbucks/fifthpage.dart';
import 'package:starbucks/fourthpage.dart';
import 'package:starbucks/main.dart';
import 'package:starbucks/firstpage.dart';
import 'package:starbucks/secondpage.dart';
import 'package:starbucks/thirdpage.dart';

class Starbucks extends StatefulWidget {
  const Starbucks({super.key});

  @override
  State<Starbucks> createState() => _StarbucksState();
}

class _StarbucksState extends State<Starbucks> {
  
  //Every if u want to create bottomNavigationBar u must create this variable
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(

        //set Index to change to any page
        index: currentIndex,

        //any page
        children: [
          StarbucksFirstPage(),
          StarbucksSecondPage(),
          StarbucksThirdPage(),
          StarbucksFourthPage(),
          StarbucksFifthPage(),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: starbucksPrimanyColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white.withOpacity(0.8),

        //Necessary for bottomNavigationBar Widget
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
        ],

      ),
    );
  }
}