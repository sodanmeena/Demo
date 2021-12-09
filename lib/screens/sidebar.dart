import 'package:flutter/material.dart';
import 'package:flutter_dashboard_app/Controller/auth_controller.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Expanded(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
                child: Image.asset(
              'assets/images/dummy-logo-png-4.png',
              fit: BoxFit.contain,
            )
                // Text(
                //   'Side menu  FlutterCorner',
                //   textAlign: TextAlign.center,
                //   style: TextStyle(color: Colors.white, fontSize: 25),
                // ),
                ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {},
          ),
          // ListTile(
          //   leading: Icon(Icons.shopping_cart),
          //   title: Text('Cart'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          // ListTile(
          //   leading: Icon(Icons.border_color),
          //   title: Text('Feedback'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                AuthController.logOut();
              }),
        ],
      ),
    ));
  }
}
