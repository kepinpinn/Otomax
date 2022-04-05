import 'package:flutter/material.dart';
import 'package:otomax/widgets/category_card.dart';
import 'package:otomax/model/rec.dart';
import 'package:otomax/widgets/detail_product.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailProduct(text: 'Hello')));
        },
        child: ListView(
          children: [
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                RecCategory(
                  Rec(
                      id: 1,
                      name: 'Velg Original Rays',
                      imageUrl: 'assets/rays.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                RecCategory(
                  Rec(
                      id: 1,
                      name: 'Velg Original Work',
                      imageUrl: 'assets/work.jpg'),
                ),
                SizedBox(
                  height: 15,
                ),
                RecCategory(
                  Rec(
                      id: 1,
                      name: 'Velg Original Sparco',
                      imageUrl: 'assets/sparco.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
