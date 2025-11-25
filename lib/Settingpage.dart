import 'package:flutter/material.dart';


class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings,size: 30,color: Colors.grey),
          SizedBox(height: 30,),
          Text('الإعدادات',style: TextStyle(fontSize: 20,color: Colors.grey),)
        ],
      ),
    );
  }
}