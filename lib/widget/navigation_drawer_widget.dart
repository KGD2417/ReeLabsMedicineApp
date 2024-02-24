import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pill_pal/pages/login.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Guest'),
            accountEmail: const Text('guest@mail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // child: Image.asset('images/.png'),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFFB784B7),
              //image: DecorationImage(image: AssetImage('.jpg'), fit: BoxFit.cover)
            ),),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit Profile'),
            onTap: () => print('uploaded'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.handshake),
            title: Text('Referral'),
            onTap: () => print('uploaded'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () => print('uploaded'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('uploaded'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: (){
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
