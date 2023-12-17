import 'package:flutter/material.dart';
import 'package:flutter_travel_app/pages/trip_details_page.dart';
import 'package:flutter_travel_app/widgets/avatar.dart';
import 'package:flutter_travel_app/widgets/home_trip_card_lg.dart';

class MainTripCard extends StatelessWidget {
  const MainTripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'CURRENT TRIP',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 500),
                            reverseTransitionDuration:
                                const Duration(milliseconds: 500),
                            pageBuilder: (_, animation, __) =>
                                const TripDetailsPage(),
                            transitionsBuilder: (_, animation, __, child) =>
                                FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ))),
                    child: const HomeTripCardLg(),
                  ),
                  /*const Positioned(
                      bottom: -15,
                      right: 300,
                      child: Hero(
                        tag: "profile1",
                        child: Avatar(
                          imgSrc: "assets/images/profile1.jpg",
                          size: 40,
                        ),
                      )),
                  const Positioned(
                      bottom: -15,
                      right: 270,
                      child: Hero(
                        tag: "profile2",
                        child: Avatar(
                          imgSrc: "assets/images/profile2.jpg",
                          size: 40,
                        ),
                      )),*/
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
