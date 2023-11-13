import 'package:flutter/material.dart';

import 'widgets/iklan_item.dart';
import 'widgets/laptop_item.dart';
import 'widgets/merk_item.dart';
import 'widgets/search_and_ProfileImage.dart';
import '../../common/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Search_and_ProfileImage(),
            SizedBox(
              height: 10,
            ),
            IklanItem(),
            SizedBox(
              height: 10,
            ),
            MerkItem(),
            SizedBox(
              height: 10,
            ),
            LaptopItem(),
          ],
        ),
      ),
    );
  }
}
