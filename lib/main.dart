import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CivilsMonthlyProPage(),
    );
  }
}

class CivilsMonthlyProPage extends StatefulWidget {
  @override
  _CivilsMonthlyProPageState createState() => _CivilsMonthlyProPageState();
}

class _CivilsMonthlyProPageState extends State<CivilsMonthlyProPage> {
  @override
  Widget build(BuildContext context) {
    // Get screen size
    final size = MediaQuery.of(context).size;

    // Define button width as a percentage of screen width
    final buttonWidth = size.width * 0.7;

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: EdgeInsets.all(size.width * 0.04), // Responsive padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: size.height * 0.07), // Responsive top space
                Text(
                  'CIVILS MONTHLY PRO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.06, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.06), // Increased space
                // PRACTISE TEST button
                Stack(
                  children: [
                    SizedBox(
                      width: buttonWidth, // Set button width
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle Practise Test button
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.01,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                35), // Increased border radius
                          ),
                        ),
                        child: Text(
                          'PRACTISE TEST',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.06, // Responsive font size
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'FREE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03), // Responsive space
                // TEST button
                SizedBox(
                  width: buttonWidth, // Set button width
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle Test button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            35), // Increased border radius
                      ),
                    ),
                    child: Text(
                      'TEST',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.06, // Responsive font size
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05), // Responsive space
                Text(
                  'Prepare here with us for UPSC SSC RRB UPPSC KPSC AND TNPSC',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.045,
                    fontWeight: FontWeight.bold, // Responsive font size
                  ),
                ),
                SizedBox(height: size.height * 0.04), // Responsive space
                Text(
                  'Practise TEST(free) with 10 random questions\nTEST covers more important questions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.bold // Responsive font size
                      ),
                ),
              ],
            ),
            // Updated Image with increased width
            Image.asset(
              'assets/a.png', // Replace with your image asset
              height: size.height * 0.35, // Responsive image height
              width: size.width * 0.9, // Increased image width
            ),
          ],
        ),
      ),
    );
  }
}
