import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Github Perfil'),
              actions: const [
                IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: null,
                ),
              ],
            ),
            drawer: Drawer(
                child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Michael Jordan'),
                  accountEmail: Text('mjordan23@fiap.com.br'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/perfil.jpg'),
                  ),
                ),
                ListTile(
                    trailing: Icon(Icons.person), title: new Text('Perfil')),
                ListTile(
                    trailing: Icon(Icons.book),
                    title: new Text('Repositories')),
                ListTile(
                    trailing: Icon(Icons.star), title: new Text('Favorites'))
              ],
            )),
            body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'images/perfil.jpg',
                      ),
                    ),
                    Text(
                      'Michael Jordan',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'mjordan23',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Card(
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(Icons.map),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Brazil, São Paulo, SP',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          )),
                    ),
                    Card(
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(Icons.mail),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'mjordan23@fiap.com.br',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          )),
                    ),
                    Card(
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(Icons.people),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '1Mi follower 1k following',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          )),
                    ),
                  ],
                ))));
  }
}
