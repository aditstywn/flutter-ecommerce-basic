import 'package:flutter/material.dart';

class Search_and_ProfileImage extends StatelessWidget {
  const Search_and_ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.search),
                label: Text('Masukan Pencarian'),
              ),
            ),
          ),
          Expanded(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/orang.png'),
            ),
          ),
        ],
      ),
    );
  }
}
