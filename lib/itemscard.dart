import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard(
      {super.key,
      required this.Disc,
      required this.Name,
      required this.Pic,
      required this.Price,
      required this.Pricecut});

  final String Pic;
  final String Name;
  final String Price;
  final String Pricecut;
  final String Disc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.grey,
        padding: EdgeInsets.all(10),
        height: 220,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 50,
              child: Image.network(Pic),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ]),
                  ),
                  Container(
                    child: Text(Name),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("\$${Price}"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("\$${Pricecut}",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough)),
                        SizedBox(
                          width: 10,
                        ),
                        Text("${Disc}%off"),
                        Container(
                          color: Colors.green,
                          child: Icon(Icons.add_shopping_cart),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
