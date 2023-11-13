import 'package:flutter/material.dart';

import '../../common/constant/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
        ),
        centerTitle: true,
        backgroundColor: ColorName.appBar,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Name(name: 'Adit', image: 'assets/images/orang.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.edit),
                            hintText: 'Restu Aditya S'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.edit),
                            hintText: 'Adit@gmail.com'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.edit),
                            hintText: '***********'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. HP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.edit),
                            hintText: '0897525383038'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: Icon(Icons.edit),
                            hintText: 'Jl. Jateng'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Edit Perubahan',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Name extends StatefulWidget {
  final String name;
  final String image;
  const Name({super.key, required this.name, required this.image});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  double textSize = 15;
  double avatarSize = 30;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(widget.image),
          maxRadius: avatarSize,
        ),
        Text(
          widget.name,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  textSize = 15;
                  avatarSize = 30;
                });
              },
              icon: Icon(Icons.remove_circle_outline),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  textSize = 30.5;
                  avatarSize = 80;
                });
              },
              icon: Icon(Icons.add_circle_outline),
            ),
          ],
        ),
      ],
    );
  }
}
