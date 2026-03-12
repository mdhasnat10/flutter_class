import 'package:flutter/material.dart';
import 'package:module11_class1/module_11/Class_2/widgets/citycard.dart';

class module11_class2 extends StatelessWidget {
  const module11_class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      color: Colors.red,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 25,
                    child: Container(
                      color: Colors.green,
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 50,
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CityCard(
                img:
                    'https://www.hoteldel.com/wp-content/uploads/2021/01/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x900-1.jpg',
                Cityname: 'Dhaka',
                ratting: '⭐ 4.5',
              ),
              SizedBox(height: 10),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CityCard(
                      img:
                          'https://www.hoteldel.com/wp-content/uploads/2021/01/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x900-1.jpg',
                      Cityname: 'Dhaka',
                      ratting: '⭐ 4.5',
                    ),
                    SizedBox(width: 10),
                    CityCard(
                      img:
                          'https://www.hoteldel.com/wp-content/uploads/2021/01/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x900-1.jpg',
                      Cityname: 'Dhaka',
                      ratting: '⭐ 4.5',
                    ),
                    SizedBox(width: 10),
                    CityCard(
                      img:
                          'https://www.hoteldel.com/wp-content/uploads/2021/01/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x900-1.jpg',
                      Cityname: 'Dhaka',
                      ratting: '⭐ 4.5',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              CityCard(
                img:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzYHfRmKYX9GyWnu10mGnaVMR3c0AOPeNHg&s',
                Cityname: 'Chittagone',
                ratting: '⭐ 4.8',
              ),
              SizedBox(height: 10),
              CityCard(
                img:
                    'https://tbbd-flight.s3.ap-southeast-1.amazonaws.com/bloge4A3lEt94pyEsKRxjyjIB2rVqNEdXfF-.png',
                Cityname: 'Cox\'s Bazar',
                ratting: '⭐ 4.7',
              ),
              SizedBox(height: 10),
              CityCard(
                img:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQzYHfRmKYX9GyWnu10mGnaVMR3c0AOPeNHg&s',
                Cityname: 'Chittagone',
                ratting: '⭐ 4.8',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
