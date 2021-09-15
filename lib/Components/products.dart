import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/products_details.dart';

//Création de la classe stateful pour les produits.

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  // Définition de la variable qui contient la liste des produits
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 120,
      "price": 85
    },
    {
      'name': 'Robe Noire',
      'picture': 'images/products/dress2.jpeg',
      'old_price': 120,
      "price": 85
    },
    {
      'name': 'Talon rouge',
      'picture': 'images/products/hills2.jpeg',
      'old_price': 120,
      "price": 85
    },
    {
      'name': 'Basket',
      'picture': 'images/products/shoe1.jpg',
      'old_price': 120,
      "price": 85
    },
  ];

// paramétrage du Widget qui permet de faire resortir la liste des produits
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_price: product_list[index]['price'],
            product_old_price: product_list[index]['old_price'],
          );
        });
  }
}

// Création de la classe qui permet de donnée les caractéristique d'un produits uniques
class SingleProduct extends StatelessWidget {
  // Création des variables caractérisant un produit

  final String product_name;
  final String product_picture;
  final int product_old_price;
  final int product_price;

  // Constructeur

  SingleProduct(
      {this.product_name,
      this.product_picture,
      this.product_price,
      this.product_old_price});

  @override
  Widget build(BuildContext context) {
//Encadremment des produits
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              // Navigation vers la page de détailles
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new ProductDetails(

              ))),


              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$product_price",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                          //decoration: TextDecoration.lineThrough
                        ),
                      ),
                      subtitle: Text(
                        "\$$product_old_price",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(product_picture, fit: BoxFit.cover)),
            ),
          )),
    );
  }
}
