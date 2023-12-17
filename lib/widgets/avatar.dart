import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imgSrc;
  final double size;
  const Avatar({super.key, required this.imgSrc, required this.size});

  @override
  Widget build(BuildContext context) {
    /*return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: const BoxDecoration(
          // color: Color(0xFFF2BEA1),
          shape: BoxShape.circle),
      child: Image.asset(imgSrc),
    );*/
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white, // Colore del contorno bianco
          width: 2.0, // Larghezza del contorno
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage(imgSrc),
      ),
    );
  }
}
