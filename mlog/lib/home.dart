import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var buildUpcomingSeasonItem = _buildUpcomingSeasonItem('Resort Collection 2024', 'assets/category_section2.png');
    var buildUpcomingSeasonItem2 = buildUpcomingSeasonItem;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destuo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Presenting our new spring collection 2024',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  const Text(
                    'Discover our Spring Summer Collection named "Happiness, Candy, Emotions" '
                    'with our vibrant palette of warm tones, pink pastels, and dreamy textures. '
                    'Our pieces will enhance your beauty with delicately whimsical pieces and designs. '
                    'Fashion perfect for every season.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Check Our New Collection'),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/top_section.png', width: 50, height: 50),
                    ],
                  ),
                ],
              ),
            ),
            // Categories Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildCategoryItem('Men', 'assets/category_section.png'),
              ],
            ),
            // Upcoming Seasons Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Upcoming Seasons',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            buildUpcomingSeasonItem2,
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imagePath) {
    return Column(
      children: [
        Image.asset(imagePath, width: 50, height: 50),
        SizedBox(height: 8),
        Text(title),
      ],
    );
  }

  Widget _buildUpcomingSeasonItem(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          ElevatedButton(
            onPressed: () {},
            child: Text('See Details'),
          ),
        ],
      ),
    );
  }
}
