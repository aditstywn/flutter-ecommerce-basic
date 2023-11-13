import 'package:flutter/material.dart';

class MerkItem extends StatelessWidget {
  const MerkItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 2),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  )
                ],
              ),
              child: TextButton(
                onPressed: () {
                  print('All Item');
                },
                child: Text(
                  'All Item',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 2),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  )
                ],
              ),
              child: TextButton(
                onPressed: () {
                  print('Asus');
                },
                child: Text(
                  'Asus',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 2),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  )
                ],
              ),
              child: TextButton(
                onPressed: () {
                  print('Lenovo');
                },
                child: Text(
                  'Lenovo',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(3, 2),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  )
                ],
              ),
              child: TextButton(
                onPressed: () {
                  print('Acer');
                },
                child: Text(
                  'Acer',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
