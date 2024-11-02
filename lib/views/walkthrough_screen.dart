import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamang_food_service_food_ordering_app/consts/image_consts.dart';
import 'package:tamang_food_service_food_ordering_app/provider/walkthroughprovider.dart';


class WalkthroughScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WalkthroughProvider(),
      child: Scaffold(
        backgroundColor: Color(0xFFF4EDEB),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Consumer<WalkthroughProvider>(
                builder: (context, provider, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetsManager.g12, // Logo asset
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Tamang\nFoodService',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),


                      Image.asset(
                        AssetsManager.Illustration1, // Replace with your walkthrough illustration path
                        height: 300,
                      ),

                      SizedBox(height: 30),


                      Text(
                        'All your favorites',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      SizedBox(height: 10),


                      Text(
                        'Order from the best local restaurants\nwith easy, on-demand delivery.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),

                      SizedBox(height: 20),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(radius: 4, backgroundColor: Colors.green),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                          SizedBox(width: 4),
                          CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                        ],
                      ),

                      SizedBox(height: 40),


                      ElevatedButton(
                        onPressed: () {
                          provider.goToHomeScreen(context); // Navigate using provider
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFC107),
                          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
