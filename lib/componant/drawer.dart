import 'dart:io';
import 'package:flutter/material.dart';

import '../constants/constant.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: K.searchColor,
        child: ListView(
            children: [Padding(padding: EdgeInsets.only(top:30)),
    Row(
    children: [
    Padding(padding: EdgeInsets.only(left: 10)),
    const CircleAvatar(
    foregroundImage:NetworkImage("https://www.bing.com/th?id=OIP.4tkXpnsLuT7vgljQka4nCAHaGR&w=150&h=127&c=8&rs=1&qlt=90&o=6&dpr=1.25&pid=3.1&rm=2") ,),
    SizedBox(
    width: 10,
    ),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: const [
    Text(
    "Sarah Abs",
    style: TextStyle(fontSize: 15, color: Colors.white),
    ),
    Text("sarah.abs@yahoo.com",
    style: TextStyle(fontSize: 13, color: Colors.white)),
    ],
    ),
    SizedBox(
    width: 20,
    ),
    CircleAvatar(
    child: IconButton(
    onPressed: () {}, icon: Icon(Icons.add_comment_outlined),

    color: Colors.white,
    ),

    backgroundColor: K.searchColor,

    )
    ],
    ),SizedBox(height:40),
    ListTile(onTap: (){},
    leading: Icon(
    Icons.search,
    color: Colors.white,

    ),
    title: Text("Search", style: TextStyle(color:
    Colors.white))),
    ListTile(onTap: (){},
    leading: Icon(
    Icons.people,
    color: Colors.white,

    ),
    title: Text("People", style: TextStyle(color:
    Colors.white))),
    ListTile(onTap: (){},
    leading: Icon(
    Icons.favorite_border,
    color: Colors.white,

    ),
    title: Text("Favourites", style: TextStyle(color:
    Colors.white))),
    ListTile(onTap: (){},
    leading: Icon(
    Icons.workspaces_filled,
    color: Colors.white,

    ),
    title: Text("Workflow", style: TextStyle(color:
    Colors.white))),
    ListTile(onTap: (){},
    leading: Icon(
    Icons.update,
    color: Colors.white,

    ),
    title: Text("Updates", style: TextStyle(color:
    Colors.white))),
    Divider(color: Colors.white,thickness: 1,)
    ,ListTile(onTap: (){},
    leading: Icon(
    Icons.account_tree_outlined,
    color: Colors.white,
    ),
    title: Text("Plugins", style: TextStyle(color:
    Colors.white))),
    ListTile(onTap: (){},
    leading: Icon(
    Icons.notifications,
    color: Colors.white,

    ),
    title: Text("Notifications", style: TextStyle(color:
    Colors.white)))],
    ));
  }
}