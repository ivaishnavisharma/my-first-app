// import 'package:flutter/material.dart';
//
// class ListScreen extends StatelessWidget {
//   ListScreen({super.key});
//
//   List<ListItem> items = [ListItem("Map", Icons.map)];
//
//   @override
//   Widget build(BuildContext context) {
//
//     items.add(ListItem("Call", Icons.call));
//     items.add(ListItem("Message", Icons.message));
//
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("list"),
//       ),
//       // body: ListView(
//       //   children: const [
//       //     ListTile(
//       //       leading: Icon(Icons.map),
//       //       title: Text("map"),
//       //        trailing:  Icon(Icons.more_vert)   ,
//       //     ),ListTile(
//       //       leading: Icon(Icons.call),
//       //       title: Text("call"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.message),
//       //       title: Text("message"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.share),
//       //       title: Text("share"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.notifications),
//       //       title: Text("notifications"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.mail),
//       //       title:Text("mail"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.alarm),
//       //       title: Text("alarm"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.route),
//       //       title: Text("route"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.search),
//       //       title: Text("search"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.settings),
//       //       title: Text("settings"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.bluetooth),
//       //       title: Text("bluetooth"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.safety_check),
//       //       title: Text("safety check"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.backup),
//       //       title: Text("backup"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.cached),
//       //       title: Text("cached"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.lock_clock),
//       //       title: Text("lock clock"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.location_city),
//       //       title: Text("location city"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.wifi),
//       //       title: Text("wifi"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.flight),
//       //       title: Text("flight"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.scanner),
//       //       title: Text("scanner"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),ListTile(
//       //       leading: Icon(Icons.near_me),
//       //       title: Text("near me"),
//       //       trailing: Icon(Icons.more_vert),
//       //     ),
//       //   ],
//       // ),
//       body: ListView.builder(
//         itemCount: items.length,
//         shrinkWrap: true,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             leading: Icon(items[index].icons),
//             title: Text(items[index].name),
//           );
//         },
//       ),
//     );
//   }
// }
//
//
// class ListItem{
//
//   String name;
//
//   IconData icons;
//
//   ListItem(this.name, this.icons);
//
//
//
// }
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  List<ListItem> items = [
    ListItem(
      "map",
      Icons.map,
    )
  ];

  @override
  Widget build(BuildContext context) {
    items.add(ListItem("call", Icons.call));
    items.add(ListItem("notifications", Icons.notifications));
    return Scaffold(
      appBar: AppBar(
        title: Text("my list"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(items[index].icon),
            title: Text(items[index].name),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  elevation: 10,
                  builder: (
                    BuildContext context,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(hintText: "email"),
                          ),
                          SizedBox(height: 20.0,),
                          TextField(
                            decoration: InputDecoration(hintText: "password"),
                          ),
                          SizedBox(height: 20.0,),

                          ElevatedButton(onPressed: (){}, child: Text("Submit"))

                        ],
                      ),
                    );

                    // return Container(child: Center(child: Text("items[index].name",style: TextStyle(fontSize: 24))));
                  });
            },
          );
        },
      ),
    );
  }
}

class ListItem {
  String name;
  IconData icon;

  ListItem(this.name, this.icon);
}
