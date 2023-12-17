import 'package:flutter/material.dart';
import 'package:flutter_travel_app/widgets/avatar.dart';

class DetailsPageHeader extends StatelessWidget {
  const DetailsPageHeader({super.key, required this.offset});

  final double offset;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: FractionalOffset(0, 1 - offset),
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: "date",
                          child: Text('May 5-15',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      color: Color.lerp(
                                          Colors.white, Colors.black, offset))),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        FractionallySizedBox(
                          widthFactor: 0.7,
                          child: Hero(
                            tag: "title",
                            child: Text(
                                'Riding through th lands of the legends',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Color.lerp(
                                            Colors.white, Colors.black, offset),
                                        fontWeight: FontWeight.bold)),
                          ),
                        ),
                        /*const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            children: [
                              Hero(
                                tag: "profile1",
                                child: Avatar(
                                  imgSrc: "assets/images/profile1.jpg",
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Hero(
                                tag: "profile2",
                                child: Avatar(
                                  imgSrc: "assets/images/profile2.jpg",
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        )*/
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ))));
  }
}
