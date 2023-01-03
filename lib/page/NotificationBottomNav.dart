import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class NotificationBottomNav extends StatefulWidget {
  const  NotificationBottomNav({Key? key}) : super(key: key);

  @override
  _NotificationBottomNavState createState() => _NotificationBottomNavState();
}

class _NotificationBottomNavState extends State< NotificationBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: new AppBar(
  title: new Text('Your Favorites')
),
body: new Center
(
child: new Text("Notifications Are Off"),
    ),
    );
    
  }
}