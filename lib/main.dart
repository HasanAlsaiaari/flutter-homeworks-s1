import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  CircleAvatar(
                    minRadius: 100,
                    backgroundImage: Image.asset(
                      'images/personal_Image.jpg',
                    ).image,
                  ),

                  Text("Hasan Alsaiaari"),
                  Text("Devloper"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Email"),
                       Text("hasanalsaiaari@gmail.com")
                      ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Phone"),
                       Text("+966 59 123 49999")
                      ],
                  )
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
