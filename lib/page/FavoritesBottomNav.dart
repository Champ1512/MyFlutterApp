import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class FavoritesBottomNav extends StatefulWidget {
  const  FavoritesBottomNav({Key? key}) : super(key: key);

  @override
  _FavoritesBottomNavState createState() => _FavoritesBottomNavState();
}

class _FavoritesBottomNavState extends State< FavoritesBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: new AppBar(
  title: new Text('Your Favorites')
),
body: new Center
(
child: new Text("No Favorites Where Found"),
    ),
    );
    
  }
}