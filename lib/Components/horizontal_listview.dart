import 'package:flutter/material.dart';

//Création de la liste horizontal qui est une classe stateless (stl permet de crée cette class)
//la class stateful est crée pour des objets qui sont statiques et ne varient pas

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Création de la boite où sera ranger les icones de la catégorie.
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        //liste des icones de catégories
        children: <Widget>[
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessoires',
          ),
          Category(
            image_location: 'images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Accessoires',
          ),
          Category(
            image_location: 'images/cats/informal.png',
            image_caption: 'Accessoires',
          ),
          Category(
            image_location: 'images/cats/jeans.png',
            image_caption: 'Accessoires',
          ),
          Category(
            image_location: 'images/cats/shoe.png',
            image_caption: 'Accessoires',
          ),
        ],
      ),
    );
  }
}

// Création de la class catégorie, qui est enfant de HorizontalList. Se sont les caractéristiques des icônes qui seront dans la liste horizontal crée plus haut

class Category extends StatelessWidget {
  //création des variables de la classe
  final String image_location;
  final String image_caption;

  // Constructeur
  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
            width: 100.0,
            height: 80.0,),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
