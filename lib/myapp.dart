import 'package:flutter/material.dart';
import 'package:flutter_dashboard_app/Controller/Login_Page/Login_Page/login_page.dart';
import 'package:flutter_dashboard_app/Pages/home.dart';
import 'package:get/get.dart';

import 'Controller/Login_Page/Login_Page/login_page.dart';
import 'package:flutter_dashboard_app/Controller/auth_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );

    //   GetMaterialApp(
    //     title: "ZiL",
    //     theme: new ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     debugShowCheckedModeBanner: false,
    //     home: FutureBuilder(
    //         future: authController.tryAutoLogin(),
    //         builder: (contect, authResult) {
    //           if (authResult.connectionState == ConnectionState.waiting) {
    //             return Center(
    //               child: CircularProgressIndicator(
    //                   valueColor: AlwaysStoppedAnimation<Color>(Colors.red)),
    //             );
    //           } else {
    //             getToken();
    //             print(value);
    //             print('abhimanoj');
    //             if (value != null) {
    //               return OverViewPage();
    //             } else {
    //               return LoginListHeader();
    //             }
    //           }
    //         }),
    //   );
    // }

    // void getToken() async {
    //   var LocalStorageService;
    //   var LocalStorageServiceItems;
    //   var value = await LocalStorageService.instance
    //       .get(LocalStorageServiceItems.userToken);
//   }
// }
