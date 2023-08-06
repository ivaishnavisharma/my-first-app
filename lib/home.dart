import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
        "My Application"
        )
      ),
          body: Row(
       crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       Expanded(
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text("please check my first text "),
            SizedBox(height:16.0),
            Text("This is my second text"),
      ],
    ),
       ),


       SizedBox(width: 12.0,),
        Column(
          children: [
            Text("Hi There!"),
            SizedBox(height:16.0),
            Text('this is my application'),
          ],
        ),
        SizedBox(width:12.0),
        Text("I am vaishnavi sharma"),
      ],
    ),
    );
  }
}


