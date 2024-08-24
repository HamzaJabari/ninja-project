import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home: NingaCard(),

));

class NingaCard extends StatefulWidget {
  @override
  State<NingaCard> createState() => _NingaCardState();
}

class _NingaCardState extends State<NingaCard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Ninja ID card', 
        style: TextStyle(color: Colors.white)),
        
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          setState(() {
            ninjalevel+=1;
          });
        } ,
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 67, 137, 172) ,
        ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/weed.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,
            ),
            Text(
              'Mezoo',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 30.0,
             ),
              Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
              
            ),
            SizedBox(height:  10.0),
            Text(
              '$ninjalevel',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
             Icon(
              Icons.email,
              color: Colors.green,
             ),
             SizedBox(width: 10.0,),
             Text('meezoo.hq@gmail.com',
             style: TextStyle(color: Colors.white,
             fontSize:18.0,
             letterSpacing:1.0,
             )
             )
             
             
             ]
            
            ),
          ],
        ),
      ),
    );
  }
}
