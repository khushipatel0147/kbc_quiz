import 'package:flutter/material.dart';
import 'package:kbc_quiz/Screen/liveScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff696EAA),
        centerTitle: true,
        title: Text(
          "Welcome to KBC",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/kbc.jpg",
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LiveScreen(),
                        ));
                  });
                },
                child: Align(
                  alignment: Alignment(0,0.98),
                  child: Text(
                    "Click Hear to Start Game",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
