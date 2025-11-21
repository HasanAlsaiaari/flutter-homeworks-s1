import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  final String name;

  const Secondpage({super.key,
    required this.name

  });

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Column(
        children: [
          Text(
            widget.name,
            style: TextStyle(fontSize: 20),
            ),

          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
               child: Text('Back'))
        ],
      ),
    );
  }
}


