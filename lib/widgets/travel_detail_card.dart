import 'package:flutter/material.dart';

class TravelDetailCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  final String desc;

  const TravelDetailCard({super.key, required this.imgSrc, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Stack(
        children: [
          Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(imgSrc), 
                fit: BoxFit.cover,
              ),
            )
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(title,
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  )
              )
            )
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 30),
                  child: Text(desc,
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                  )
              )
            )
          )

        ],
      ),
    );
  }
}
