import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// Mes propres importations
import 'package:flutter_application_1/Components/horizontal_listview.dart';
import 'package:flutter_application_1/Components/products.dart';

//Démarage de l'application
void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

//Création de la page d'acceil qui est une classe stateful (stf permet de crée cette class
//la class stateful est crée pour des objets qui varient


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    // Création du widget pour le caroussel (ceci c'est après avoir définit la barre de l'application (return Scaffold))

    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 300),
          dotSize: 4.0,
          indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
    
//  Bar d'application

      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Entrainement'),

        // Icones sur la Bar d'application

        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: null),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: null),
        ],
      ),

//  Le volet de navigation sur la bar de l'application

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

//          Entête

            new UserAccountsDrawerHeader(
              accountName: Text('Olivier BOTCHOLI'),
              accountEmail: Text('botcholi@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),

//          Options présent sur le volet de navigation

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Accueil'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Mon compte'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Mes commandes'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Catégories'),
                leading: Icon(
                  Icons.category,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favories'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Paramètres'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Aide'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),

//  Le Corps de l'application

      body: new ListView(
        children: <Widget>[

          // Images Carousel de l'application
          imageCarousel,

          // Partie réservé pour le text 'Catégorie qui suit'
          new Padding(padding: const EdgeInsets.all(15.0),
          child: new Text('Catégories'),),

          //Partie réserver aux images placées en horizontal
          // On pouvais le faire à la suite comme les autres mais c'est encore mieux de le faire dans un module extérieur et rappeler la fonction ici
          HorizontalList(),

          // Partie réservé pour le text 'Produits'
          new Padding(padding: const EdgeInsets.all(15.0),
          child: new Text('Produits récents')),

          //Création de la partie réservé au produits récents

          Container(
            height: 320.0,
            child: Products(),
          )


        ],
      ),
    );
  }
}
