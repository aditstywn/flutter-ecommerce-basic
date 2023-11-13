import 'package:flutter/material.dart';

class IklanItem extends StatelessWidget {
  const IklanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            offset: Offset(4, 4),
            blurRadius: 10,
          )
        ],
        image: DecorationImage(
          image: AssetImage('assets/images/banner 3.jpg'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
