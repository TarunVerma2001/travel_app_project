import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationDescription extends StatefulWidget {
  String imgPath;
  String price;
  String title;

  LocationDescription(
      {required this.imgPath, required this.price, required this.title});

  @override
  _LocationDescriptionState createState() => _LocationDescriptionState();
}

class _LocationDescriptionState extends State<LocationDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            // ignore: avoid_redundant_argument_values
            scrollDirection: Axis.vertical,
            children: [
              Center(
                child: Stack(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(20),
                      elevation: 10,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.imgPath), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.55,
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(
                                            Icons.arrow_back_ios_new_rounded,
                                            color: Colors.pink,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.pink,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title,
                                  style: GoogleFonts.quicksand(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      // ignore: prefer_interpolation_to_compose_strings
                                      ('\$' + widget.price),
                                      style: GoogleFonts.quicksand(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      '/person',
                                      style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'OverView',
                          style: GoogleFonts.quicksand(
                              fontSize: 25,
                              color: Colors.orange,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'Reviews',
                          style: GoogleFonts.quicksand(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        card(CupertinoIcons.clock, 'DURATION', '5 hours'),
                        card(CupertinoIcons.star, 'DURATION', '5 hours'),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    
                    Text(
                      'The city of Semarang in Central Java is famous for its spring rolls and historic sites, such as the Lawang Sewu landmark and the Old Town district.However over the past two years, another tourist attraction called the Jatibarang Reservoir has captivated locals and tourists alike.Occupying an area of 189 hectares in Gunungpati Semarang district, the reservoir offers a stunning view of the surrounding hills',
                      style: GoogleFonts.quicksand(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Row(
                        // ignore: avoid_redundant_argument_values
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const SizedBox(
                            height: 30,
                            width: 30,
                          ),
                          Text('Book now', style: GoogleFonts.quicksand(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),),
                          const Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 30),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget card(IconData icon, String title, String subTitle) {
    return Material(
      elevation: 5,
      shadowColor: Colors.black26,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          // ignore: avoid_redundant_argument_values
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Icon(
              icon,
              size: 30,
              color: Colors.orange,
            ),
            Column(
              children: [
                Text(title,
                    style: GoogleFonts.quicksand(
                        fontSize: 15,
                        color: Colors.grey.withOpacity(0.5),
                        fontWeight: FontWeight.w500)),
                Text(subTitle,
                    style: GoogleFonts.quicksand(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
