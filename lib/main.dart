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
        
        body:
        SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
                  Text("Web Devloper"),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text("Email"), Text("hasanalsaiaari@gmail.com")],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text("Phone"), Text("+967 770497978")],
                  ),
                ],
              ),
            ),

            Divider(),

            Container(
              width: double.infinity,
               color: Colors.amber,
               child: Column(
                children: [
                  Text("Skills",style: TextStyle(fontSize: 15),),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(".NET Framework"),
                      Text("SQL Server"),
                      Text("Flutter"),
                      Text("C#"),
                      Text("C++"),
                      Text("Dart")

                      ],
                      )
                    
                    ],
                  ),
                ],
               ),
        ),

        Container(
          width: double.infinity,
           color: Colors.green,
           child: Column(
            children: [
              Text("Education",style: TextStyle(fontSize: 15),),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("Bachelor's degree in Information Technology"),
                  Text("University of Seiyun"),
                  Text("2023 - 2027"),

                  ],
                  )
                
                ],
              ),
            ],
           ),
        ),

        Container(
          width: double.infinity,
           color: Colors.red,
           child: Column(
            children: [
              Text("Experience",style: TextStyle(fontSize: 15),),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("Internship & Study At Programming Advices Platform"),
                  Text("Duration: 15 months"),
                  Text("Role: Full Stack Web Developer"),

                  ],
                  )
                
                ],
              ),
            ],
           ),
        )


        ],
        ),
        )
      ),
    );
  }
}
