import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_project/Screens/explore_screen.dart';
import 'package:travel_app_project/components/bottom_navigation_bar_function.dart';
import 'package:travel_app_project/components/widgets.dart';
import '../components/lists.dart';

class MyHomePage extends StatefulWidget {
  // ignore: public_member_api_docs
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String dropdownValue = 'Top trips';
  late TabController controller;
  // Lists obj = Lists();
  // List<List<dynamic>> lists =  context.watch<Lists>().

  @override
  void initState() {
    super.initState();
    // getTotalAmount();
    // countPrice();
    // ignore: unnecessary_new
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Lists obj = Lists();
    List<List<dynamic>> lists = context.watch<Lists>().categoryCard;
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: avoid_unnecessary_containers
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 00, 0),
        // ignore: sized_box_for_whitespace
        child:
            // ignore: sized_box_for_whitespace
            Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // ignore: avoid_redundant_argument_values
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('hii');
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Hii Jennifer!',
                          style: GoogleFonts.quicksand(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(25),
                      elevation: 100,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Stack(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.notifications_none_rounded,
                                size: 25,
                              ),
                              Positioned(
                                top: 5,
                                right: 5,
                                child: Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2.5),
                                      color: Colors.red,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 45,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Where do you want to go?',
                  style: GoogleFonts.quicksand(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              // const SizedBox(
              //   height: 40,
              // ),
              // ignore: avoid_unnecessary_containers
              // ignore: sized_box_for_whitespace
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 100,
                          spreadRadius: 5,
                        )
                      ]),
                  height: 60,
                  width: double.infinity,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for places...',
                          hintStyle: GoogleFonts.quicksand(
                              fontSize: 20, color: Colors.grey),
                          // ignore: sort_child_properties_last
                          suffixIcon: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    const BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 40,
                                      spreadRadius: 5,
                                    )
                                  ]),
                              child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.search))),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Categories',
                  style: GoogleFonts.quicksand(
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
              ),
              // ignore: sized_box_for_whitespace
              // const SizedBox(
              //   height: 40,
              // ),
              Container(
                height: 120,
                color: Colors.transparent,
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemCount: lists.length,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Consumer<Lists>(
                      builder: (context, watch, child) {
                        return GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                Lists().selectCatagory(index);
                                for (int i = 0; i < lists.length; i++) {
                                  print("i: ");
                                  print(i);
                                  print(lists[i][2]
                                      .toString());
                                }
                              },
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 27, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: lists[index][2]
                                      .toString() ==
                                      "true"
                                  ? Border.all(color: Colors.pink, width: 1)
                                  : Border.all(color: Colors.white, width: 0),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 1,
                                  blurRadius: 20,
                                )
                              ],
                            ),
                            height: 60,
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image(
                                      image: AssetImage(
                                          lists[index][1].toString())),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  lists[index][0].toString(),
                                  style: GoogleFonts.quicksand(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Top trips',
                          style: GoogleFonts.quicksand(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.black87),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        // const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ExploreScreen();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Explore',
                            style: GoogleFonts.quicksand(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.deepPurple),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LocationCard(
                        title: 'Banjir Canal',
                        subTitle: 'Camp',
                        imgPath: 'assets/images/mountain_travel.jpg',
                        price: '180',
                        fav: true),
                    LocationCard(
                        title: 'Jatibarang',
                        subTitle: 'Lake',
                        imgPath: 'assets/images/boat_travel.jpg',
                        price: '100',
                        fav: true),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar:
          BottomNavBarFunction(controller: controller, activated: 0),
    );
  }
  dynamic color(BuildContext context, int index){
    if(context.watch<Lists>().categoryCard[index][2] == 'true'){
      return Border.all(color: Colors.pink, width: 1);
    } else{
      return Border.all(color: Colors.white, width: 0);
    }
  }
}
