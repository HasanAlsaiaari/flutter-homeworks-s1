import 'package:flutter/material.dart';
import 'Secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Flutter Demo", home: const Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  void _CopyTextToAnotherTextField() {
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Nav2() {
    Navigator.push(
      context,

      MaterialPageRoute(
        builder: (context) => Secondpage(name: _controller1.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Column(
        children: [
          TextField(
            controller: _controller1,
            decoration: InputDecoration(
              labelText: "Enter Your Name",
              hintText: "Hasan",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            controller: _controller2,
            decoration: InputDecoration(
              labelText: "Inputed Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            readOnly: true,
          ),

          SizedBox(height: 30),

          ElevatedButton(
            onPressed: _CopyTextToAnotherTextField,
            child: Text("Copy To SecondTextField"),
          ),

          SizedBox(height: 10),

          ElevatedButton(onPressed: _Nav2, child: Text("Navigator")),
        ],
      ),
    );
  }
}
