import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Profile Kelompok 2',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RobotoSlab',
                  fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.pink[400],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center( // Center widget added
              child: Column(
                children: [
                  SizedBox(height: 20), // Add space above the first profile
                  ProfileCard(
                    name: 'Yunike Shandy Jholan N',
                    imagePath: 'images/yunike.jpg',
                    description: 'MI | 22091397008',
                    email: '📧 yunikeshandy.22008@mhs.unesa.ac.id',
                    phone:'📞 +62 812-3515-7169',
                    color: Colors.blueGrey,
                  ),
                  ProfileCard(
                    name: 'Ananda Mayang Septia',
                    imagePath: 'images/mayang.jpg',
                    description: 'MI | 22091397015',
                    phone:'📞 +62 939-5626-0316',
                    email: '📧 anandamayang.22015@mhs.unesa.ac.id',
                    color: Colors.red,
                  ),
                  ProfileCard(
                    name: 'Maria Cahya Jayanti',
                    imagePath: 'images/maria.jpg',
                    description: 'MI | 22091397017',
                    phone:'📞 +62 858-5949-3781',
                    email: '📧 mariacahya.22017@mhs.unesa.ac.id',
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String description;
  final Color? color;
  final String email;
  final String phone;

  const ProfileCard({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.email,
    required this.phone,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 130,
          backgroundImage: AssetImage(imagePath),
        ),
        Text(
          name,
          style: TextStyle(
            color: color ?? Colors.black, // Default to black if color is null
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoSlab',
            letterSpacing: 3,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            color: color ?? Colors.black, // Default to black if color is null
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoSlab',
          ),
        ),
        SizedBox(height: 10), // Add space description and phone
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              phone,
              style: TextStyle(
                color: color ?? Colors.black,
                fontSize: 19,
                fontFamily: 'RobotoSlab',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              email,
              style: TextStyle(
                color: color ?? Colors.black, // Default to black if color is null
                fontSize: 19,
                fontFamily: 'RobotoSlab',
              ),
            ),
          ),
        ),
        SizedBox(height: 50), // memberikan jarak antara profiie
      ],
    );
  }
}

