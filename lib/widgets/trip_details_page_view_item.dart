import 'package:flutter/material.dart';
import 'package:flutter_travel_app/widgets/details_page_header.dart';
import 'package:flutter_travel_app/widgets/travel_card.dart';
import 'package:flutter_travel_app/widgets/travel_detail_card.dart';

class TripDetailsPageViewItem extends StatelessWidget {
  const TripDetailsPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 250,
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
              child: TravelDetailCard(
                imgSrc: "assets/images/travelmap.jpeg",
                title: "GEO SUMMARY",
                desc: "1,457 km",
              ),
            )),
            SizedBox(width: 6),
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
              child: TravelDetailCard(
                imgSrc: "assets/images/media.jpg",
                title: "MEDIA",
                desc: "94 photos",
              ),
            )),
          ],
        ),
      ],
    );
  }
}
