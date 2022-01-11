/*
* Author: Helen Mekonnen
* Date: 9/1/22
* Description: A Sample App For Tour And Travel
* Sec: 3, Id: 14693/20
* */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Hello World Travel Title",
      home: Scaffold(
          appBar: AppBar(
              title: Text("Tour And Travel App"),
              backgroundColor: Colors.deepPurple,),
          //Enclosing Center Widget into padding Widget
          body: Builder(builder: (context) => Padding(
              padding: EdgeInsets.all(20),
              child: Center(
               /*Using Column Container Widget which have children property
                 that allows to add more than one Widget */
               child: Column(children: [
                 Padding(
                   padding: EdgeInsets.all(10),
                   //In the Text Widget we used style Property to Add TextStyle Class
                   child: Text(
                     'Tour And Travel',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
              ),),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Discover the World',
                   style: TextStyle(
                     fontSize: 20,
                     color: Colors.deepPurpleAccent),
              ),),
                Padding(
                  padding: EdgeInsets.all(15),
                  // Image is a Widget which have a network constructor which automatically downloads an image from URL
                  child: Image.network(
                    'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                  height: 350,
            ),),
                Padding(
                  padding: EdgeInsets.all(15),
                  // ElevatedButton shows a Button can press
                  child: ElevatedButton(
                    child: Text('Contact Us'),
                     /*In the onPressed property we have created the contactUs
                     function to give Information when the user Clicks the Button */
                     onPressed: () => contactUs(context),
            ),),
              ]))))));
  }

/* To Show an AlertDialogue Follow these Steps
*  -Calling the showDialog function in order to show a message to the user
*  -Setting context- this passed to our method through the context parameter
*  -Setting builder- in order to use builder property we need to create a function a
*  -Returning the AlertDialog property
*  -Setting the AlertDialog properties*/
  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at tourandtravel@gmail.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              // The pop method of the Navigator class will close the AlertDialog
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}