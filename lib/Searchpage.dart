import 'package:flutter/material.dart';
import 'list.dart';


class Searchpage extends StatelessWidget {

final list item1 = list('Searchpage','This is Searchpage',Icons.search);
final list item2 = list('Account','This is Accountpage',Icons.account_circle);
final list item3 = list('Homepage','This is Homepage',Icons.home);
final list item4 = list('Settings','This is Settingspage',Icons.settings);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: ListView(
      children: [
        ListTile(
          leading: Icon(item1.icon),
          title: Text(item1.title),
          subtitle: Text(item1.subtitle),

          onTap: () {
            Navigator.pushNamed(context, '/searchpage');
          },
        ),

        ListTile(
          leading: Icon(item2.icon),
          title: Text(item2.title),
          subtitle: Text(item2.subtitle),
          onTap: () {
            Navigator.pushNamed(context, '/accountpage');
          },
        ),

        ListTile(
          leading: Icon(item3.icon),
          title: Text(item3.title),
          subtitle: Text(item3.subtitle),
          onTap: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),

        ListTile(
          leading: Icon(item4.icon),
          title: Text(item4.title),
          subtitle: Text(item4.subtitle),
          onTap: () {
            Navigator.pushNamed(context, '/settingspage');
          },
        ),
      ],
     ),
    );
    

    
  }
}