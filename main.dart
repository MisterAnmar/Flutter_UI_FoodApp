import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // Lock Orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        textTheme: TextTheme(  display4: GoogleFonts.gurajada(    fontSize: 154,    fontWeight: FontWeight.w300,    letterSpacing: -1.5  ),  display3: GoogleFonts.gurajada(    fontSize: 96,    fontWeight: FontWeight.w300,    letterSpacing: -0.5  ),  display2: GoogleFonts.gurajada(    fontSize: 77,    fontWeight: FontWeight.w400  ),  display1: GoogleFonts.gurajada(    fontSize: 55,    fontWeight: FontWeight.w400,    letterSpacing: 0.25  ),  headline: GoogleFonts.gurajada(    fontSize: 39,    fontWeight: FontWeight.w400  ),  title: GoogleFonts.gurajada(    fontSize: 32,    fontWeight: FontWeight.w500,    letterSpacing: 0.15  ),  subhead: GoogleFonts.gurajada(    fontSize: 26,    fontWeight: FontWeight.w400,    letterSpacing: 0.15  ),  subtitle: GoogleFonts.gurajada(    fontSize: 22,    fontWeight: FontWeight.w500,    letterSpacing: 0.1  ),  body1: GoogleFonts.gurajada(    fontSize: 26,    fontWeight: FontWeight.w400,    letterSpacing: 0.5  ),  body2: GoogleFonts.gurajada(    fontSize: 22,    fontWeight: FontWeight.w400,    letterSpacing: 0.25  ),  button: GoogleFonts.gurajada(    fontSize: 22,    fontWeight: FontWeight.w500,    letterSpacing: 1.25  ),  caption: GoogleFonts.gurajada(    fontSize: 19,    fontWeight: FontWeight.w400,    letterSpacing: 0.4  ),  overline: GoogleFonts.gurajada(    fontSize: 16,    fontWeight: FontWeight.w400,    letterSpacing: 1.5  ),),
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, right: 18.0, bottom: 10.0, left: 18.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Container(
          //    padding: EdgeInsets.only(top: 50.0, right: 20.0, bottom: 10.0, left: 20.0),
              child: Text(
                "DISCOVER",
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.red[100],),
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[300]),
                  hintText: 'Search',
                ),
              ),
              ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Featured Item",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  )

                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 220.0,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Expanded(

                    child: Container(
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0,),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1560513880-befd0c5761b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, progress){
                              return progress == null ? child : CircularProgressIndicator();
                            },
                          )
                      ),
                    )
                  ),

                  Text("Weight Loss Vegetable", style: TextStyle(color: Colors.black54, letterSpacing: 1.1 ,fontSize: 16.0, fontWeight: FontWeight.bold, height: 1.5),),

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        child:Text("9.00", style: TextStyle(color: Colors.black26, fontSize: 16.0, fontWeight: FontWeight.bold, height: 0.5),),
                      ),
                      Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.star, size: 12.0, color: Colors.amber,),
                              Icon(Icons.star, size: 12.0, color: Colors.amber,),
                              Icon(Icons.star, size: 12.0, color: Colors.amber,),
                              Icon(Icons.star_half, size: 12.0, color: Colors.black54,),
                              Icon(Icons.star_border, size: 12.0, color: Colors.black54,),

                            ],
                          )),


                      Text("3.5 / 5.0", style: TextStyle(fontSize: 16.0, color: Colors.black54, height: 1.0),),

                      Icon(Icons.bookmark, size: 12.0, color: Colors.black54,),

                    ],
                  ),

                ],
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Trending",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22.0,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  )

                ],
              ),
            ),

            Container(
              height: 170.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  MyItems('https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                      'My Main TIlte ',
                      'My Subheading'
                  ),
                  SizedBox(width: 10.0,),
                  MyItems('https://images.unsplash.com/photo-1560508180-03f285f67ded?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                      'My Main TIlte ',
                      'My Subheading'
                  ),
                  SizedBox(width: 10.0,),
                  MyItems('https://images.unsplash.com/photo-1571805423089-2b6c0e9284c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                      'My Main TIlte ',
                      'My Subheading'
                  ),
                  SizedBox(width: 10.0,),
                  MyItems('https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                      'My Main TIlte ',
                      'My Subheading'
                  ),
                  SizedBox(width: 10.0,),
                  MyItems('https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                      'My Main TIlte ',
                      'My Subheading'
                  ),
                  SizedBox(width: 10.0,),
                ],
              ),
            ),


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.search),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          IconButton(icon: Icon(Icons.home), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
          SizedBox(width: 40.0,),
          IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){}),
          IconButton(icon: Icon(Icons.person_outline), onPressed: (){}),
        ],
      ) ,


    );
  }
}

Container MyItems(String imageVal, String heading, String subHeading ){
  return Container(
    width: 160,
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0,),
          child: Image.network(
            imageVal,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, progress){
              return progress == null ? child : CircularProgressIndicator();
            },
          )
        ),
        Text("Im a tilte of the item", style: TextStyle(color: Colors.black54, letterSpacing: 1.1 ,fontSize: 16.0, fontWeight: FontWeight.bold, height: 1.5),),
        Text("5.00", style: TextStyle(color: Colors.black26, fontSize: 16.0, fontWeight: FontWeight.bold, height: 0.5),),

        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(

                child: Row(
                children: <Widget>[
                  Icon(Icons.star, size: 12.0, color: Colors.amber,),
                  Icon(Icons.star, size: 12.0, color: Colors.amber,),
                  Icon(Icons.star, size: 12.0, color: Colors.amber,),
                  Icon(Icons.star_half, size: 12.0, color: Colors.black54,),
                  Icon(Icons.star_border, size: 12.0, color: Colors.black54,),

                ],
            )),

            SizedBox(width: 10.0,),
            Text("3.5 / 5.0", style: TextStyle(fontSize: 16.0, color: Colors.black54, height: 1.0),),
            SizedBox(width: 10.0,),
            Icon(Icons.bookmark, size: 12.0, color: Colors.black54,),

          ],
        ),

      ],
    ),
  );
}
