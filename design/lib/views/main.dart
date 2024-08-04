import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart'; // Ensure you have this import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DesTuo Login',
      theme: ThemeData(
        primaryColor: Color(0xFFEECED3), // Primary color
        hintColor: Colors.brown[700], // Accent color
        textTheme: TextTheme(
          headlineMedium: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.brown[700]),
          headlineSmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black54),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: Color(0xFFEECED3),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown[700], // Button background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final List<String> imgList = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var carouselOptions = CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                );
    var carouselSlider = CarouselSlider(
                options: carouselOptions,
                items: imgList
                    .map((item) => Container(
                          child: Center(
                            child: Image.asset(item,
                                fit: BoxFit.cover, width: 1000),
                          ),
                        ))
                    .toList(),
              );
    var column2 = Column(
            children: [
              
              carouselSlider,
              // Add other widgets or UI elements below the CarouselSlider if needed
            ],
          );
    var column = column2;
    return Scaffold(
      backgroundColor: Color(0xFFFFF0F5),
      body: Center(
        child: SingleChildScrollView(
          child: column,
        ),
      ),
    );
  }

  CarouselOptions(
      {required double height,
      required bool autoPlay,
      required bool enlargeCenterPage}) {}

  // ignore: non_constant_identifier_names
  CarouselSlider({required options, required List<Container> items}) {}
}
