import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Screen(),
    );
  }
}

class Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,

        title: Row(
          children: [
            Container(
              child: Icon(Icons.account_circle_rounded),
            ),

            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 25.0),
                  child: Text("Welcome", style: GoogleFonts.wallpoet(color: Colors.black),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text("Mehmet Ozcan", style: GoogleFonts.wallpoet(color: Colors.black),),
                ),
              ],
            ),
          ],
        ),




        actions: <Widget>[

          Padding(
            padding: const EdgeInsets.all(0),
            child: Icon (Icons.location_on_outlined),
          ),

          Padding(
            padding: EdgeInsets.only(top: 20, right: 10.0),
            child: Text("Eskişehir", style: TextStyle(color: Colors.black),),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget> [

          RichText(
            text: TextSpan(
              text:               "Upcoming References ",

              style: TextStyle(fontSize: 20, color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan> [

                TextSpan(
                  text: 'View All>> ',
                  style: TextStyle (
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),

                ),
              ],
            ),
          ),


          Row (

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget> [
                  Image.asset('cnf_1.png'),
                  Text(
                    "Applying Education in a Complex World",
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget> [
                  Image.asset('cnf_2.png'),
                  Text(
                    "HERITAGES: Past and Present - Build and Social",
                  ),
                ],
              ),
            ],
          ),

          Text(
            "Favorites",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          Row (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget> [
                  Image.asset('cnf_3.png'),
                  Text(
                    "New Perspectives in Science Education",
                  ),
                ],
              ),
            ],
          ),

          Container (
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Column(

                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Icon (Icons.people),
                    ),
                    Text(
                      "Authors",
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Icon (Icons.library_books_outlined),
                    ),
                    Text(
                      "Papers",
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Icon (Icons.book_outlined),

                    ),
                    Text(
                      "Books",
                    ),
                  ],
                ),

                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Icon (Icons.search),

                    ),
                    Text(
                      "Search",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


}
