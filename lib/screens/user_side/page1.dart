import 'package:flutter/material.dart';
import 'package:shoerack/screens/user_side/login.dart';
import 'package:shoerack/screens/user_side/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Image.asset(
                    'asset/Digital Sketches_prev_ui.png',
                    height: MediaQuery.of(context).size.height * .3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Journey\n With Nike",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .047,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Smart, Gorgeous & Fashionable\nCollection",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .020,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 50),
                            child: GestureDetector(
                              onTap: () {
                                // Add any action you want for the skip button
                                // For example, navigate to the next page
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => login()));
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .02),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20, bottom: 50),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Page2()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 97, 160, 212),
                                ),
                                height:
                                    MediaQuery.of(context).size.height * .056,
                                width: MediaQuery.of(context).size.width * .4,
                                child: Center(
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .02),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
