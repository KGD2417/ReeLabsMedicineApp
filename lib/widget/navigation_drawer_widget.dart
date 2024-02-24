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
            accountName: const Text('Jidnya Jadhav'),
            accountEmail: const Text('email@mail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                // child: Image.asset('images/.png'),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.pink,
              //image: DecorationImage(image: AssetImage('.jpg'), fit: BoxFit.cover)
            ),),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload'),
            onTap: () => print('uploaded'),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload'),
            onTap: () => print('uploaded'),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload'),
            onTap: () => print('uploaded'),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload'),
            onTap: () => print('uploaded'),
          ),
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
