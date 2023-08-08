import 'package:flutter/material.dart';
import 'package:my_first_app/list.dart';

class Months extends StatelessWidget {
  const Months({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MONTHS"),
      ),

      body: Center(
        child: ListView(
          children: [
            ListTile(leading: Text("january"),
          onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text: ("january"),)));
    }),
            ListTile(
              leading: Text("february"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"february")));
              },
            ),
            ListTile(
              leading: Text("march"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"march")));
                }
            ),
            ListTile(
              leading: Text("april"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"april")));
              }

              ,
            ),
            ListTile(
              leading: Text("may"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"may")));
                }
            ),
            ListTile(
              leading: Text("june"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"june")));
                }
            ),
            ListTile(
              leading: Text("july"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text: "july",)));
                }
            ),
            ListTile(
              leading: Text("august"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text: "august",)));
                }
            ),
            ListTile(
              leading: Text("september"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text: "september",)));
                }
            ),
            ListTile(
              leading: Text("october"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"october")));
                }
            ),
            ListTile(
              leading: Text("november"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text: "november",)));
                }
            ),
            ListTile(
              leading: Text("december"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:( context)=>SecondScreen(text:"december")));
                }
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String text;
  const SecondScreen({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("month"),
      ),body: Center(
        child: Text(text),
      ),
    );
  }
}
