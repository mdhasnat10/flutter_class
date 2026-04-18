import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Example')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),

                      child: Image.network(
                        'https://images.squarespace-cdn.com/content/v1/5a1fac7e914e6b30d737146f/1677821595557-9I6OCOZV1YO0FM6LGMVU/228A1866-vert-copy.jpg',
                        height: 250,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            'Test Product',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: .bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '\$500',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: .w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/ea/82/73/ea8273468c828787201be3e958747db6--drive-poster-illustration-artists.jpg',
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 7,
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    'Md Abu Hasnat',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: .bold,
                    ),
                  ),
                  Text(
                    'MSc Student',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  Icon(Icons.shopping_cart, size: 50, color: Colors.blueGrey),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: .circle,
                      ),
                      child: Text(
                        '11',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),

              Card(
                color: Colors.blueAccent,
                child: ExpansionTile(
                  title: Text(
                    'Order Details',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.receipt, color: Colors.white),
                  children: [
                    ListTile(
                      title: Text(
                        'Order ID: 46567',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Total: 560\$',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              Stepper(
                currentStep: 0,
                connectorColor: WidgetStatePropertyAll(Colors.blue),
                steps: [
                  Step(
                    title: Text(
                      'Order Placed',
                      style: TextStyle(color: Colors.black),
                    ),
                    content: SizedBox(),
                  ),
                  Step(
                    title: Text(
                      'Order Confirmed',
                      style: TextStyle(color: Colors.black),
                    ),
                    content: SizedBox(),
                  ),
                  Step(
                    title: Text(
                      'Processing',
                      style: TextStyle(color: Colors.black),
                    ),
                    content: SizedBox(),
                  ),
                  Step(
                    title: Text(
                      'Delivered',
                      style: TextStyle(color: Colors.black),
                    ),
                    content: SizedBox(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
