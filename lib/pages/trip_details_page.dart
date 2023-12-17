import 'package:flutter/material.dart';
import 'package:flutter_travel_app/widgets/avatar.dart';
import 'package:flutter_travel_app/widgets/details_page_background.dart';
import 'package:flutter_travel_app/widgets/details_page_header.dart';
import 'package:flutter_travel_app/widgets/travel_card.dart';
import 'package:flutter_travel_app/widgets/main_trip_card.dart';
import 'package:flutter_travel_app/widgets/trip_details_page_view_item.dart';

class TripDetailsPage extends StatefulWidget {
  const TripDetailsPage({super.key});

  @override
  State<TripDetailsPage> createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  ValueNotifier<double> offsetNotifier = ValueNotifier(0);
  final PageController _pageController = PageController();

  @override
  void initState() {
    _pageController.addListener(_pageListener);
    super.initState();
  }

  void _pageListener() {
    final screenHeight = MediaQuery.of(context).size.height;
    // print("offset: "+_pageController.offset.toString());
    final offsetValue = _pageController.offset / screenHeight;
    // print("offsetValue: "+ offsetValue.toString());
    offsetNotifier.value = offsetValue.clamp(0, 1);
  }

  @override
  void dispose() {
    _pageController
      ..removeListener(_pageListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: offsetNotifier,
        builder: (context, offsetValue, child) {
          return Scaffold(
            appBar: AppBar(
                elevation: 0,
                scrolledUnderElevation: 0,
                forceMaterialTransparency: true,
                leading: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    style: IconButton.styleFrom(backgroundColor: Colors.white),
                    icon: const Icon(Icons.close)),
                actions: [
                  Hero(
                    tag: "profile",
                    child: IconButton(
                      onPressed: () {},
                      icon: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white, // Colore del contorno bianco
                            width: 2.0, // Larghezza del contorno
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile3.jpg'),
                        ),
                      ),
                    ),
                  )
                ]),
            extendBodyBehindAppBar: true,
            body: Stack(
              children: [
                DetailsBackground(offset: offsetValue),
                DetailsPageHeader(offset: offsetValue),
                PageView(
                  scrollDirection: Axis.vertical,
                  controller: _pageController,
                  children: const [
                    SizedBox.shrink(),
                    TripDetailsPageViewItem()
                  ],
                )
              ],
            ),
          );
        });
  }
}
