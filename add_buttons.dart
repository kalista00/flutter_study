import 'package:flutter/material.dart';

class Player {
  String? name;
  Player(this.name);
}

void main() {
  var nico = Player("potato");
  runApp(App(nico.name));
}

class App extends StatelessWidget {
  final String? playerName;

  App(this.playerName);

  @override
  Widget build(BuildContext context) {
    print(playerName);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.
              start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.end,
                          children: [
                            Text(
                                'Hello, World23!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800, //굵기
                                ),
                            ),

                            Text(
                                'Welcome back',
                                style: TextStyle(
                                  color: Colors.yellow.withOpacity(0.5), //투명도
                                  fontSize: 14,
                                ),
                            ),
                          ],
                      ),
                    ],
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45), //둥글게만들기
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
          ),
        )
      ),
    );
  }
}