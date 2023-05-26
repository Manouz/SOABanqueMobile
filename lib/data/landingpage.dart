import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/acceuil.dart';
import '../screens/connexion.dart';
import 'auth.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return StreamBuilder<User?>(
      stream: auth.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          if (user == null) {
            return const Connexion();
          }
          return const AccueilPage();
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: Colors.white),
            ),
          );
        }
        return const Scaffold(
            body: Center(
          child: Text(" No Connection"),
        ));
      }),
    );
  }
}