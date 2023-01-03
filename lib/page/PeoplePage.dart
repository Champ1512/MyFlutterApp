
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../HeroPage2.dart';
import '../navigation_drawer_widget.dart';


class PeoplePage extends StatelessWidget {
@override
Widget build ( BuildContext context ) => Scaffold (
appBar : AppBar (

title : Text ( ' People ' ) ,
centerTitle : true ,
 backgroundColor : Color.fromARGB(255, 10, 10, 10) ,
) , // AppBar
); // Scaffold
}