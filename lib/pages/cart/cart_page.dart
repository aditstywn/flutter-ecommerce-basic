import 'package:flutter/material.dart';

import '../../common/constant/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var IsChacked = false;
  var jumlah = 0;
  var harga = 25000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorName.appBar,
        title: Text(
          'Cart',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 1,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nama Toko',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: IsChacked,
                          onChanged: (value) {
                            setState(() {
                              if (value != null) {
                                IsChacked = value;
                              }
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/TUF Gaming A15 FA506.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Barang',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Tipe',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Rp.25000',
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp.${harga * jumlah}',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (jumlah >= 1) {
                                        jumlah--;
                                      } else {
                                        jumlah = 0;
                                      }
                                    });
                                  },
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    size: 30,
                                  ),
                                ),
                                Text(
                                  '$jumlah',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      jumlah++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
