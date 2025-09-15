import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
       home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                border: Border.all(
                  color: Colors.red,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5)
                  )
                ],
              ),
              child: ClipOval(
                child: Image.network('https://th.bing.com/th?id=OIF.g%2fWwyDpFsJkku9nLhU7frg&r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
                width: 150,
                height: 150,
                fit: BoxFit.cover,)
              ),
            ),
            //name
            SizedBox(height: 20),
            Text('Global Reciprocal Colleges',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            ),

            //about me
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 0,
                    offset: Offset(0,3)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About Me',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red

                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Im Adriiane Lazundin from BSIT 306 of College of Computer Studies in Global Reciprocal Colleges. ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 1.5,
                  ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

            ),
          ],
        )
      ),
    );
  }
}
