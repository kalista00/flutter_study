//Widget 개념 공부
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
        backgroundColor: Color.fromRGBO(124, 108, 23, 0.8),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
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
                                )
                            ),

                            Text(
                                'Welcome back',
                                style: TextStyle(
                                  color: Colors.yellow.withOpacity(0.5), //투명도
                                  fontSize: 14,
                                )
                            ),
                          ]
                      )
                    ]
                )
              ]
          ),
        )
      ),
    );
  }
}
