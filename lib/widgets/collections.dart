import 'package:flutter/material.dart';
import 'package:otomax/widgets/detail_product.dart';
import 'package:otomax/home/discover.dart';

class Collections extends StatelessWidget {
  const Collections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailProduct(text: 'Promo')));
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset('assets/promo.png', fit: BoxFit.cover)),
            )),
        Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduct(
                                text: 'Recommendation',
                              )));
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child:
                        Image.asset('assets/enkei16.jpg', fit: BoxFit.cover))))
      ],
    )));
  }
}
