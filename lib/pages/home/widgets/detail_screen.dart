import 'package:as_store/common/constant/colors.dart';
import 'package:flutter/material.dart';

import '../models/detail_item.dart';

class DetailScreen extends StatefulWidget {
  final DetailItem item;

  const DetailScreen({super.key, required this.item});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  TextEditingController _comentC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Pesan(context),
          Keranjang(context),
          Pembayaran(),
        ],
      ),
      backgroundColor: ColorName.background,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    widget.item.imageAsset,
                    fit: BoxFit.fill,
                  ),
                ),
                ScrolImage(),
                HargaItem(),
                SizedBox(
                  height: 8,
                ),
                Detail_Deskripsi(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Komentar',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextField(
                        controller: _comentC,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Tuliskan Komentar',
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      if (_comentC.text.isNotEmpty)
                        Container(
                          padding: EdgeInsets.all(8.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/orang.png'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Adit Stywn',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(_comentC.text),
                                ],
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.black45,
                child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton Pesan(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[200],
        ),
        child: Row(
          children: [
            Icon(
              Icons.chat,
              color: Colors.black,
            ),
            Text(
              ' Pesan',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  TextButton Pembayaran() {
    return TextButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        width: 140,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.monetization_on_outlined,
              color: Colors.black,
            ),
            Text(
              ' Pembayaran',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  TextButton Keranjang(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          builder: (context) {
            return Container(
              padding: EdgeInsets.all(10),
              height: 350,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.item.imageAsset),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rp ${widget.item.harga}',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Stok :  ${widget.item.stok}',
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Varian Item : ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text('SSD 256'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text('SSD 512'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text('SSD 1TB'),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.green,
                          ),
                          iconColor: MaterialStatePropertyAll(
                            Colors.black,
                          ),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: Text(
                                'Barang Telah Masuk Keranjang Pesanan Anda',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.amber)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                            ),
                            Text(
                              'Masukan Keranjang',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.red,
                          ),
                          iconColor: MaterialStatePropertyAll(
                            Colors.black,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.close,
                            ),
                            Text(
                              'Tutup',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: 110,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            Text(
              ' Keranjang',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Container Detail_Deskripsi() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Produk',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text('Stok'),
                    SizedBox(
                      width: 42,
                    ),
                    Text(widget.item.stok),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text('Merk'),
                    SizedBox(
                      width: 40,
                    ),
                    Text(widget.item.merk),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text('Kondisi'),
                    SizedBox(
                      width: 25,
                    ),
                    Text(widget.item.kondisi),
                  ],
                ),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  children: [
                    Text('Garansi'),
                    SizedBox(
                      width: 25,
                    ),
                    Text('-'),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 10,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Deskripsi Produk',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.item.description,
            ),
          ],
        ),
      ),
    );
  }

  Container HargaItem() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rp ${widget.item.harga}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.item.name,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Terjual ${widget.item.terjual}+',
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      size: 20,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '${widget.item.bintang} (${widget.item.ulasan})',
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '10',
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.chat_rounded,
                      size: 20,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '5',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container ScrolImage() {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 235, 234, 234),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Image.asset(
                widget.item.imageAsset,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Image.asset(
                widget.item.imageAsset,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Image.asset(
                widget.item.imageAsset,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Image.asset(
                widget.item.imageAsset,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Image.asset(
                widget.item.imageAsset,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Image.asset(
                widget.item.imageAsset,
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
