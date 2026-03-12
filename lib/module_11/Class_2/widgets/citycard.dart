import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img,Cityname,ratting; 
  const CityCard({super.key, required this.img, required this.Cityname, required this.ratting});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(img, height: 250, fit: BoxFit.cover,),
        Container(height: 250, color: Colors.black.withOpacity(0.4)),
        Positioned(
          top: 20,

          left: 30,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(Cityname, style: TextStyle(fontSize: 20)),
          ),
        ),

        Positioned(
          right: 20,
          top: 20,
          child: Text(
            ratting,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
