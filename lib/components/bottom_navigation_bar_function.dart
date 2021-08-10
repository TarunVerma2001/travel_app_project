// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_project/Screens/auth_screen.dart';
import 'package:travel_app_project/Screens/home_page_screen.dart';

class BottomNavBarFunction extends StatefulWidget {
  TabController controller;
  int activated;

  BottomNavBarFunction({required this.activated, required this.controller});

  @override
  _BottomNavBarFunctionState createState() => _BottomNavBarFunctionState();
}

class _BottomNavBarFunctionState extends State<BottomNavBarFunction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
      child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width - 30,
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(25)),
            child: TabBar(
              controller: widget.controller,
              onTap: (index) {
                setState(
                  () {
                    widget.activated = index;
                    if (index == 0) {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return const MyHomePage();
                          },
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    }
                    if (index == 1) {}
                    if (index == 2) {}
                    if (index == 3) {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) {
                            return const AuthScreen();
                          },
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    }
                  },
                );
              },
              indicatorColor: Colors.transparent,
              tabs: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: (widget.activated == 0)
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: const Center(
                    child: Icon(
                      Icons.home_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: (widget.activated == 1)
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.compass,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: (widget.activated == 2)
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: (widget.activated == 3)
                          ? Colors.white.withOpacity(0.2)
                          : Colors.transparent),
                  child: const Center(
                    child: Icon(
                      Icons.person_outline_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )),
    );
  }
}
