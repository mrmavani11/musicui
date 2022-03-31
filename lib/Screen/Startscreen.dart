import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:musicui/Screen/FirstScre.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 200),
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage("assets/images/3344439.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell( onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FirstSreen();
              },));
            },
              child: Container(
                height: 100,
                width: 200,child: const Center(child: Text("Start",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
                margin: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
                decoration: BoxDecoration( color: const Color(0XFFC9CBFF),
                    borderRadius: BorderRadius.circular(30), ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
