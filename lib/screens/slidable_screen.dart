import 'package:flutter/material.dart';

class SlidableScreen extends StatefulWidget {
   SlidableScreen({Key? key}) : super(key: key);

  @override
  State<SlidableScreen> createState() => _SlidableScreenState();
}

class _SlidableScreenState extends State<SlidableScreen> {
double opacity = 0.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slidable"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width+0.5,
              color: Colors.red.withOpacity(opacity),
              
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width+0.5,
              color: Colors.green.withOpacity(opacity),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width+0.5,
              color: Colors.blue.withOpacity(opacity),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width+0.5,
              color: Colors.yellow.withOpacity(opacity),
            ),
            Slider(
                value: opacity,
                onChanged: (value){
              opacity = value;
              print(opacity);
              setState(() {

              });
                } )
          ],
        ),

      ),
    );
  }
}
