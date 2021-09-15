import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/products_details.dart';
import 'package:flutter_application_1/main.dart';

//  Class qui permet de définir les caractéristique du produit
class ProductDetails extends StatefulWidget {
  //variables caractérisant les détail
  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;
  final product_detail_old_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_picture,
    this.product_detail_price,
    this.product_detail_old_price
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override

  // Variable affichant les produits disponibles
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Blazers",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 400,
      "price": 350,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 159,
      "price": 50,
    }
  ];

//Widget principal
  Widget build(BuildContext context) {
    return Scaffold(
      // Bar principal de l'application
      appBar: new AppBar(
        title: Text('Details'),
        elevation: 1.0,
        backgroundColor: Colors.red,
      ),

      // Corps de l'application
      body: new ListView(
        children: <Widget>[
//    Containeur pour afficher les détails

          new Container(
            height: 300,
            child: GridTile(
                child: Container(
              color: Colors.white10,
              child: Image.asset(widget.product_detail_picture),
            )),

            //  footer


          )
        ],
      ),
    );
  }
}
