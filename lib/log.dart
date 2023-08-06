// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
//
// class Login extends StatelessWidget {
//   const Login({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//                decoration: InputDecoration(hintText: "Email"),
//             ),SizedBox(height: 16.0,
//              ),
//              TextField(
//         decoration: InputDecoration(hintText: "password"),
//              ),
//              ElevatedButton(
//                 onPressed: () {
//                    print("button pressed");
//                         },
//                         child: Text("Submit")),
//                    SizedBox(
//                      height: 12.0,
//                  ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "oeschinen lake campground",
//                       style: TextStyle(fontSize: 24),
//                     ),
//                     SizedBox(
//                       height: 8.0,
//                     ),
//                     Text(
//                       "kandersteg,switzerland",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Icon(Icons.star),
//                     Text("41"),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Icon(Icons.call),
//                     Text("calling"),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Icon(Icons.near_me),
//                     Text('route'),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Icon(Icons.share),
//                     Text("share"),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('facebook sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            TextField(
              decoration: InputDecoration(hintText: "enter your first name"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "enter your last name"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "enter your mobile number"),
              keyboardType: TextInputType.number,
            ),
            TextField(decoration: InputDecoration(hintText: "email id ")),
            TextField(decoration: InputDecoration(hintText: "gender")),
            TextField(decoration: InputDecoration(hintText: "password")),
            TextField(decoration: InputDecoration(hintText: "confirm pasword")),
            ElevatedButton(
                onPressed: () {
                 final snackBar= SnackBar(
                      content: Text(
                    "successfully signed up",
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }
}
