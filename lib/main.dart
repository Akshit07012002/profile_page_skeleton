import 'package:flutter/material.dart';

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
          title: Text('Profile Page Dummy'),
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
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
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

  Widget buildLower() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 14,
              ),
              const Text(
                'FirstName LastName',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              personalInfo(),
              const SizedBox(
                height: 24,
              ),
              Container(
                color: Colors.black,
                //margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
              ),
              const SizedBox(
                height: 24,
              ),
              admissionInfo(),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                ' THIS IS A DEMO UI LAYOUT APP ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                ' contains no animations ',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
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

  Widget personalInfo() => Column(
        children: [
          const Text(
            'Personal Information',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Date of Birth : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' DD / MM / YYYY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Nationality : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' Indian',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Gender : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' Male',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Blood Group : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' B+ve',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ],
      );

  Widget admissionInfo() => Column(
        children: [
          const Text(
            'Admission Information',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Admission Year : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' YYYY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Faculty Name : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' XXXXXXXXXXXX',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Programme Name : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' Male',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Specialization : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' Data Science',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'PRN : ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              Text(
                ' 103220XXXX',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      );
}
