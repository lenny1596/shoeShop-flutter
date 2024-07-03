import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset(
                'lib/images/running-background.png',
                height: 350,
              ),

              // const SizedBox(
              //   height: 20,
              // ),

              // title
              const Text(
                'Just Do It',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
              ),

              const SizedBox(
                height: 20,
              ),

              // subtitle
              const Text(
                'Brand new shoes and custom kicks made with premium quality materials',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 40,
              ),

              // entry button
              GestureDetector(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
