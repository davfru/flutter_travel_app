import 'package:flutter/material.dart';
import 'package:flutter_travel_app/widgets/avatar.dart';
import 'package:flutter_travel_app/widgets/travel_card.dart';
import 'package:flutter_travel_app/widgets/main_trip_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          forceMaterialTransparency: true,
          scrolledUnderElevation: 0,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            Hero(
              tag: "profile",
              child: IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile3.jpg'),
                  )),
            )
          ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              color: Colors.white,
              child: const Column(
                children: [
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your trips",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Montserrat",
                                fontSize: 30),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MainTripCard(),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: TravelCard(
                                      imgSrc: "assets/images/road.jpeg",
                                      text: "Road trips")),
                              SizedBox(width: 1),
                              Expanded(
                                  child: TravelCard(
                                      imgSrc: "assets/images/sicily.jpeg",
                                      text: "Weekend in Sicily")),
                            ],
                          ),
                        ],
                      )
                      // TravelCard()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
