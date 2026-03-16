import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text("My first app"),
        backgroundColor: Color(0xFFE9CC7A),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(20),
              color: Color(0xFFAED6DB),
              child: Image.network(
                "https://picsum.photos/400",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              color: Color(0xFFE6A8B8),
              child: Text(
                "What image is that?",
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Color(0xFFE9CC7A),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Icon(Icons.restaurant),
                      Text("Food")
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.landscape),
                      Text("Scenery")
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.person),
                      Text("People")
                    ],
                  ),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}