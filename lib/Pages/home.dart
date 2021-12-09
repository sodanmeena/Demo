import 'package:flutter/material.dart';
import 'package:flutter_dashboard_app/screens/sidebar.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  dynamic fetchData(dynamic email, dynamic password) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: {"email": "'{$email}'", "password": "'{$password}'"},
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return jsonDecode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Center(
                child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
            )),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.article,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.video_collection),
            onPressed: () {},
          ),
        ],
      )),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Featured Articles",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  )
                ]),
                Row(
                  children: [
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                    Container(
                        height: 300,
                        width: 200,
                        child: Card(
                            child: Title(
                          child: Image.asset(
                            'assets/images/photo-1554936135-d620172e4942.jpg',
                            fit: BoxFit.contain,
                          ),
                          color: Colors.blue,
                        ))),
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Featured Videos",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    )
                  ]),
                  Row(
                    children: [
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                      Container(
                          height: 300,
                          width: 200,
                          child: Card(
                              child: Title(
                            child: Image.asset(
                              'assets/images/photo-1554936135-d620172e4942.jpg',
                              fit: BoxFit.contain,
                            ),
                            color: Colors.blue,
                          ))),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
