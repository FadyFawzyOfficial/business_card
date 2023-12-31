import 'package:flutter/material.dart';

void main() => runApp(const BusinessCard());

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        cardTheme: const CardTheme(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 101,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/fady.jpg'),
                  ),
                ),
                Text(
                  'Fady Fawzy',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'SOFTWARE ENGINEER',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  height: 32,
                  color: Colors.white54,
                ),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_rounded,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      '+2 012 878 111 76',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email_rounded,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'FadyFawzy.Official@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
