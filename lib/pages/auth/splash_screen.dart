import 'package:as_store/pages/auth/login.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 227, 227),
      body: Center(
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(150),
                      topLeft: Radius.circular(220),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 72, 10),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        topRight: Radius.circular(150),
                        bottomRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              child: Image.asset('assets/images/icon-brand.png'),
            ),
          ],
        ),
      ),
    );
  }
}
