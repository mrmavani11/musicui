
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstSreen extends StatefulWidget {
  const FirstSreen({Key? key}) : super(key: key);

  @override
  State<FirstSreen> createState() => _FirstSreenState();
}

class _FirstSreenState extends State<FirstSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Row(
          children: [
            Container(
              width: 300,

              // decoration: const BoxDecoration(
              //   // image: DecorationImage(
              //     //     image: AssetImage("assets/images/3344442.jpg"),
              //     //     fit: BoxFit.cover),
              //     ),
            ),
          ],
        ),
        Positioned(
          top: 40,
          left: 10,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 3, top: 3),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[5],
                      color: const Color(0XFFF3EEFE),
                      shape: BoxShape.circle),
                  child: BackButton()
                // const Icon(
                //   Icons.arrow_back_ios_new_rounded,
                //   color: Colors.black,
                //   size: 30,
                // ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 40,
          left: 300,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 3, top: 3),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: kElevationToShadow[5],
                      color: const Color(0XFFF3EEFE),
                      shape: BoxShape.circle),
                  child: IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.settings))
                // const Icon(
                //   Icons.arrow_back_ios_new_rounded,
                //   color: Colors.black,
                //   size: 30,
                // ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 500,
            decoration: const BoxDecoration(
                color: Color(0XFFEEFBE5),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
        ),
        Center(
          child: Container(
            //padding: const EdgeInsets.only(top: 40, bottom: 40),
            margin: const EdgeInsets.only(right: 150, bottom: 90),
            width: 130,
            height: 150,
            child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/scheme.png"))),
                    ),
                    const Text(
                      "Basics",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: const BoxDecoration(
                color: Color(0XFFFFCE89),
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Center(
          child: Container(
            // padding: const EdgeInsets.only(top: 40, bottom: 40),
            margin: const EdgeInsets.only(left: 150, bottom: 90),
            width: 130,
            height: 150,
            child: TextButton(
              onPressed: () {
                // //addemo.showInterstitialAd();
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return View();
                //   },
                // ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/view-details.png"))),
                  ),
                  const Text(
                    "View",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0XFFFFE3E3),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            //  padding: const EdgeInsets.only(top: 20, bottom: 20),
            margin: const EdgeInsets.only(right: 150, top: 260),
            width: 130,
            height: 150,
            child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        actions: [
                          TextButton(
                            onPressed: () {
                              //addemo.showRewardedInterstitialAd();
                            },
                            child: const Text("BUY PRO"),
                            style: TextButton.styleFrom(
                                primary: Colors.black87,
                                backgroundColor: const Color(0XFFF3E4FC),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("NO THANKS"),
                            style: TextButton.styleFrom(
                                primary: Colors.black87,
                                backgroundColor: const Color(0XFFF3E4FC),
                                shape: const BeveledRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                        ],
                        title: const Text(
                          "Benifits of Pro version",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        content: const Text(
                            '''1.No Ads\n2.NO wait time for hint and skip\n3. Hint for every level\n4. Solution for every level'''),
                      );
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      child: const Icon(
                        Icons.workspace_premium,
                        size: 55,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "BUY\nPRO",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              color: const Color(0XFFFFBBBB),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Center(
          child: Container(
            // padding: const EdgeInsets.only(top: 20, bottom: 20),
            margin: const EdgeInsets.only(left: 150, top: 260),
            width: 130,
            height: 150,
            child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const Icon(
                          Icons.brightness_6_outlined,
                          size: 50,
                          color: Colors.black,
                        )),
                    const Text(
                      "OCCUPATION",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              color: const Color(0XFFD9D7F1),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            //padding: const EdgeInsets.only(top: 40, bottom: 40),
            margin: const EdgeInsets.only(right: 150, top: 590),
            width: 130,
            height: 150,
            child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/share.png"))),
                    ),
                    const Text(
                      "Share",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: const BoxDecoration(
                color: Color(0XFFFCD1D1),
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Center(
          child: Container(
            // padding: const EdgeInsets.only(top: 20, bottom: 20),
            margin: const EdgeInsets.only(left: 150, top: 590),
            width: 130,
            height: 150,
            child: TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: const Icon(
                          Icons.brightness_6_outlined,
                          size: 50,
                          color: Colors.black,
                        )),
                    const Text(
                      "DARK",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                )),
            decoration: BoxDecoration(
              color: const Color(0XFFFFB396),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        // Positioned(
        //     bottom: 10,
        //     child:_getAdWidget())
      ],
    ));
  }
}
