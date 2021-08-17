import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.brown[400],
        elevation: 0,
        actions: [
            IconButton(
                onPressed: () async
                {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.logout),
                tooltip: 'Logout',
            ),
        ],
      ),
    );
  }
}
