import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

final TextEditingController _controller1 = TextEditingController();
final TextEditingController _controller2 = TextEditingController();

void _CopyTextToAnotherTextField()
{
  setState(() {
    _controller2.text = _controller1.text;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        children: [
          TextField(
            controller: _controller1,
            decoration: InputDecoration(
             labelText: 'Enter your Name',
             hintText: 'Ahmed',
             border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
             ),
            ),
          ),

          SizedBox(height: 30,),
          TextField(
            controller: _controller2,
            decoration: InputDecoration(
              labelText: 'Inputed Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),

            readOnly: true,
          ),
 
          SizedBox(height: 30,),
           
          ElevatedButton(
            onPressed: _CopyTextToAnotherTextField,
            child: Text('Copy Text'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ],
      ),
     ),
    );
  }
}