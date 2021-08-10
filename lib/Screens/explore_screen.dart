import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_project/components/widgets.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: GoogleFonts.quicksand(
                          fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        // ignore: sort_child_properties_last
                        child: Text(
                          'back',
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                          
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
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
              const SizedBox(
                height: 30,
              ),
              Row(
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
              const SizedBox(
                height: 30,
              ),
              Row(
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
              const SizedBox(
                height: 30,
              ),
              Row(
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
            ],
          ),
        ));
  }
}
