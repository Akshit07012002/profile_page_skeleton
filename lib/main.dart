import 'package:flutter/material.dart';
import 'Sub-Parts/buildLower.dart';

void main() {
  runApp(const ProfilePage());
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 250;
  final double profileHeight = 150;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page Dummy',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Profile Page Dummy'),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black87,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 300),
            scrollDirection: Axis.vertical,
            children: const [
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Center(
                  child: Text(
                    ' One ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Center(
                  child: Text(
                    ' Two ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.white24,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Center(
                  child: Text(
                    ' Three ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            buildTop(),
            buildLower(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget buildTop() => Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: profileHeight / 2),
            child: buildCoverImage(),
          ),
          Positioned(
            top: coverHeight - (profileHeight / 2),
            child: buildProfileImage(),
          )
        ],
        clipBehavior: Clip.none,
      );

  Widget buildCoverImage() => Container(
        color: Colors.black26,
        child: Image.network(
          'https://images.unsplash.com/photo-1650304003871-2bdb8aa62dfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.account_circle,
          size: 144,
          color: Colors.black,
        ),
      );
}
