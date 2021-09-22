import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(5),
          child: const Text(
            'Home',
            style: TextStyle(fontSize: 16),
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('Logout'))
        ],
      ),
      body: const Center(child: Text('This is HomePage!!')),
    );
  }
}
