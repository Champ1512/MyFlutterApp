
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Page2 extends StatelessWidget {
  @override

  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title:
       Text('More Info',),),
       
    body:  Column(
       children: [
          Hero(
          tag: 'image1',
          child: Image.network('https://cars.usnews.com/images/article/202107/128595/10-JP021-jeep_cherokee-CHvbjpdfbcd5h192s11vai2rfig_Cropped.jpg')),

          Text('More Information:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Text('Brand:  Suzuki'),
          Text('Made in:  Germany'),
          Text('Seller Info:  Ahmad dekmak'),
          Text('Phone Number:  +96171531588'),
          
        ],
      )
    

   
       
  
   
      
  );
}



