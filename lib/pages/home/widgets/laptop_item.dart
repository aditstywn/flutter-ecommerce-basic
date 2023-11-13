import 'package:as_store/pages/home/models/detail_item.dart';
import 'package:as_store/pages/home/widgets/detail_screen.dart';
import 'package:flutter/material.dart';

class LaptopItem extends StatelessWidget {
  const LaptopItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: detailItem.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        mainAxisExtent: 210,
      ),
      itemBuilder: (context, index) {
        final DetailItem item = detailItem[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(
                    item: item,
                  );
                },
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        item.imageAsset,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Rp ${item.harga}',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.amber,
                            ),
                            Text('${item.bintang} | '),
                            Text(item.terjual),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'terjual',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
