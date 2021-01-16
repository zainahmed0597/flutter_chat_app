import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/utils/constants.dart';

import 'login_screen.dart';

final _auth = FirebaseAuth.instance;

class NavigationDrawer extends StatelessWidget {
  final User user = _auth.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('${user.email}', style: TextStyle(color: Colors.white)),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: Text('Logout'),
            trailing: Icon(Icons.logout),
            onTap: () {
              Constants.prefs.setBool("loggedIn", false);
              _auth.signOut();
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
