import 'package:demo/page/FavoritesBottomNav.dart';
import 'package:demo/page/FavouritesPage.dart';
import 'package:demo/page/NotificationBottomNav.dart';
import 'package:demo/page/PeoplePage.dart';
import 'package:demo/page/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'HeroPage2.dart';
import 'navigation_drawer_widget.dart';


final urlImages=[

'https://www.motortrend.com/uploads/sites/5/2021/08/2022-BMW-X6M-Competition-2.jpg?fit=around%7C958:598.75',
'https://i.cdn.newsbytesapp.com/images/l65820220304125110.jpeg',
'https://media.evo.co.uk/image/private/s--ovd31g9L--/f_auto,t_content-image-full-desktop@1/v1616590806/evo/2021/03/McLaren%20620R%20production%20end-5.jpg',
'https://carsalesbase.com/wp-content/uploads/2014/06/McLaren-Europe-Sales-scaled.jpg',
];

class HomePageState extends StatefulWidget {
  const HomePageState({Key? key}) : super(key: key);

  @override
  State<HomePageState> createState() => HomePageStateState();
}



class HomePageStateState extends State<HomePageState> 
{

   int _currentIndex=0;
 final List<Widget> _children =[
  HomePageState(),
  NotificationBottomNav(),
  FavoritesBottomNav()
  
];

   void onTappedBar(int index)
  {

    setState(() {
     _currentIndex = index;

      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
      
         drawer: NavigationDrawerWidget(),
        
        backgroundColor: Colors.grey[300],
         
        appBar: AppBar(
        
     
          actions: [ 
            IconButton(
              onPressed:(){
                showSearch(
                  context: context,
                   delegate: CustomSearchDelegate(),);
              },
            icon: const Icon(Icons.search),

            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
          ],
          backgroundColor: Colors.black,
          title: Center(child: Text('Bingo')),


        ),
        
            
      body:  Container(

      
    

         
     
    
    
    
     
      
  
    
     child:Column(
      

      
      mainAxisSize: MainAxisSize.min,
      
      
      children:[
    
    
    
    
      //carousele
    
    
      Stack(
        
      children:
           [
            
             
            
             
             Center(
              
    
      
      child:CarouselSlider.builder(
        
        options: CarouselOptions(
            height:235,
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: Duration(seconds: 2),
            ),
        itemCount: urlImages.length,
       itemBuilder: (context,index,realIndex){
           final urlImage= urlImages[index];
           return buildImage(urlImage,index);
       },
        ),
           ),
          
          
          
           Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
    
      children: [
     
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Find The Best That Suits You!",
                
                      style: GoogleFonts.bebasNeue(
                        color: Colors.white,
                                  fontSize: 25, ),),
            ),
              
                  
                   

                     
                        
                        
                      
                       
                      
                    
                  
               
      ],
    ),
      ),

          
                             Positioned(
                               right: 2,
                               bottom: 4,
                               

                               child: Row(
                                                       
                                
                                               
                               children: [

                                
                                           
                                Icon(Icons.facebook,color: Colors.white),     
                               Icon(Icons.tiktok_outlined,color: Colors.white),
                               Icon(Icons.whatsapp,color: Colors.white),
                               
                               ],
                                           ),
                             ),
                          
         ],
      ),
    
    
    
    
       //text
    
    
       Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
    
      children: [
     
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Top Brands:",
                
                      style: GoogleFonts.bebasNeue(
                decoration: TextDecoration.underline,
                decorationThickness: 0.3,
                                  fontSize: 20, ),),
            ),
     
      
      ],
     
    ),
      ),
      
     
    
    
    
    //horizental List
    
    Container(
      height: 80.0,
      color: Colors.transparent,
    
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                     image: DecorationImage(image: NetworkImage("https://assets.shopbmwusa.com/assets/images/highquality/emblem-neu_03_4767.jpg"),
        fit: BoxFit.cover),
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      )
           ),
         ),
        Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://1000logos.net/wp-content/uploads/2018/04/Mercedes-Benz-Logo.png"),
        fit: BoxFit.cover),
        
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                
                   
                      )
                      
           ),
         ),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://w7.pngwing.com/pngs/182/469/png-transparent-porsche-911-car-porsche-panamera-porsche-cayenne-porsche.png"),
        fit: BoxFit.cover),
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      )
           ),
         ),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://vehlogo.com/wp-content/uploads/2021/03/nissan_logo_2001.png"),
        fit: BoxFit.cover),
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      )
           ),
         ),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://1000logos.net/wp-content/uploads/2018/03/Lamborghini-logo.png"),
        fit: BoxFit.cover),
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      )
           ),
         ),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://www.carlogos.org/car-logos/ford-logo-2003.png"),
        fit: BoxFit.cover),
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      )
           ),
         ),Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 100,
               decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                      image: DecorationImage(image: NetworkImage("https://cdn.picpng.com/cars_logo_brands/audi-logo-car-28739.png"),
        fit: BoxFit.cover),
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      )
           ),
         ),
       
       ],),
    ),
                      
    
    
    
    //vertical List
    
    Column(
    
      children: [
    
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Available Posts:",
            
              
                    style: GoogleFonts.bebasNeue(
              decoration: TextDecoration.underline,
              decorationThickness: 0.3,
                                fontSize: 20, ),),
          ),
      ],
    ),
      
       Row(
        
         children: 
         
           [Expanded(
             
             child: Container(
               
               height: 340,
               width: 340,
               color: Colors.transparent,
               
             
             child: ListView(
                 scrollDirection: Axis.vertical,
                 children: [
    
                        GestureDetector(
                       onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page2())),
               child: Padding(
                  
                   padding: const EdgeInsets.all(8.0),
                   
                   child: 
                     
                     
                 
                        Container(
                         height: 100,
                         width: 100,
                           decoration: BoxDecoration(
                             image: DecorationImage(image: NetworkImage("https://cars.usnews.com/images/article/202107/128595/10-JP021-jeep_cherokee-CHvbjpdfbcd5h192s11vai2rfig_Cropped.jpg",scale:1),
                             alignment: Alignment.topLeft
                           ),
                         borderRadius: BorderRadius.circular(30),
                         color: Colors.white,
                         boxShadow: [
                         BoxShadow(color: Colors.grey, spreadRadius: 1),]
                          ),
                         child: Padding(
                           padding: const EdgeInsets.fromLTRB(160.0,3.0,10.0,10.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.start ,
                             children: [
                             Row(
                               
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                                      
                               SizedBox(width: 30),
                               Column(
                                 children: [
                                   Text('\$13000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                                   ),
                                   
                                  
                                       Text('per year', style: TextStyle( color: Colors.grey),
                                      
                                                                 ),
                                    
                                 ],
                               ),
                             ],),
                             Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                            // _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                              Container(
                                width: 70.0,
                                decoration: BoxDecoration(color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(10.0)),
                                alignment: Alignment.center,
                                child: Text('Full Auto'),
                                ),
                                SizedBox(width: 10.0,),
                                 Container(
                                width: 70.0,
                                decoration: BoxDecoration(color: Theme.of(context).accentColor,
                                borderRadius: BorderRadius.circular(10.0)),
                                alignment: Alignment.center,
                                child: Text('New'),
                                ),
                            ],
                            )
                         
                           ],),
                         ),
                       ),
                     
                ),
                   ),
                 
    
               Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://www.fintechnews.org/wp-content/uploads/2022/03/Shopp.jpeg",scale: 1),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(160.0,3.0,10.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                            SizedBox(width: 30),
                           Column(
                             children: [
                               Text('\$7000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color:Colors.orange[800],
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Manual'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Colors.orange[800],
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Used'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://cimg3.ibsrv.net/ibimg/hgm/1920x1080-1/100/764/2020-aston-martin-vantage_100764027.jpg",scale: 7.9),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(180.0,3.0,10.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                            SizedBox(width: 10),
                           Column(
                             children: [
                               Text('\$13000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Full Auto'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('New'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://aacarsdna.com/images/vehicles/06/large/9bdb1223cc4cdc597587f320f279d5e2.jpg",scale: 1),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(140.0,3.0,30.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                            SizedBox(width: 30),
                           Column(
                             children: [
                               Text('\$13000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Full Auto'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('New'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://images.hgmsites.net/hug/2020-aston-martin-vantage_100764017_h.jpg",scale: 1),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(140.0,3.0,30.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                            SizedBox(width: 32),
                           Column(
                             children: [
                               Text('\$13000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Full Auto'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('New'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://s.yimg.com/uu/api/res/1.2/OdzUX6v080fDwk0PxPwvPg--~B/aD0xMjIxO3c9MTYyODthcHBpZD15dGFjaHlvbg--/https://media.zenfs.com/en/business_insider_articles_888/28a40e595bb92795e438ceecdfebbe77",scale: 1),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(140.0,3.0,30.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                            SizedBox(width: 30),
                           Column(
                             children: [
                               Text('\$13000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Full Auto'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('New'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://www.alfaromeousa.com/content/dam/alfausa/online-shopping-delivery/desktop/AR-ShopSafe-BlurbRail1-2022.jpg.image.1440.jpg",scale: 7.9),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(185.0,3.0,5.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                            SizedBox(width: 10),
                           Column(
                             children: [
                               Text('\$13000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Full Auto'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('New'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 100,
                     width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: NetworkImage("https://www.alfaromeousa.com/content/dam/alfausa/online-shopping-delivery/desktop/AR-ShopSafe-BlurbRail1-2022.jpg.image.1440.jpg",scale: 7.9),
                         alignment: Alignment.topLeft
        ),
                     borderRadius: BorderRadius.circular(30),
                     color: Colors.white,
                     boxShadow: [
                     BoxShadow(color: Colors.grey, spreadRadius: 1),]
                      ),
                     child: Padding(
                       padding: const EdgeInsets.fromLTRB(185.0,3.0,5.0,10.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start ,
                         children: [
                         Row(
                           
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           Text('Toyota Camaro', style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600) ,),
                           SizedBox(width: 10),
                           Column(
                             children: [
                               Text('\$5000', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600 ),
                               ),
                               
                              
                                   Text('per year', style: TextStyle( color: Colors.grey),
                                  
                                                             ),
                                
                             ],
                           ),
                         ],),
                         Text('Beirut Minet al hoson',style: TextStyle( color: Colors.grey)),
                        // _buildRatingStars(activity.rating),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Full Auto'),
                            ),
                            SizedBox(width: 10.0,),
                             Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Colors.orange[800],
                            borderRadius: BorderRadius.circular(10.0)),
                            alignment: Alignment.center,
                            child: Text('Used'),
                            ),
                        ],
                        )
                     
                       ],),
                     ),
                   ),
                 ),
                   _children[_currentIndex],

               ],),
             ),
            
           ),
         ],
         
       ),
      


    
    
    ],
     ),
    ),
   
    

       
       bottomNavigationBar:
     
            BottomNavigationBar
            (
              onTap: onTappedBar,
              currentIndex: _currentIndex,
              items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label:'Home',
            ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
              label:'Favorites',
              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
              label:'Notification',
              ),
       ],
       
      ),

    
      ),
      
    );
    

  }
}




class CustomSearchDelegate extends SearchDelegate {
 
@override
 List <Widget>? buildActions(BuildContext context) => [IconButton(onPressed:(){query ='';} , icon: const Icon(Icons.clear)),
 ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(onPressed:() => close(context,null) , icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context)=> Center(
    child: Text(
      query,
      style: const TextStyle(fontSize: 64 )
    ),
  );

  

  @override
  Widget buildSuggestions(BuildContext context) {
    List <String> suggestions=[
      'bmw',
      'Mercedes',
      'Audi',
    ];
  



return ListView.builder(
  itemCount: suggestions.length,
  itemBuilder: (context,index){
    final suggestion=suggestions[index];
    return ListTile(
      title: Text(suggestion),
      onTap:(){
        query= suggestion;
        showResults(context);
      },
      );

  },
);

  }

}















Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color,),
    title: Text(text, style: TextStyle(color:color)),
  );   
}




Widget buildImage(String urlImage,int index) => Container(
  margin: EdgeInsets.symmetric(horizontal: 1),
  color: Colors.grey,
  child:Image.network(
    urlImage,
    fit: BoxFit.cover,
  )
);

  


 

