import 'package:flutter/material.dart';

class Grow extends StatefulWidget {
  const Grow({Key? key}) : super(key: key);

  @override
  State<Grow> createState() => _GrowState();
}

class _GrowState extends State<Grow> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/arrow-up.png",
                  height: 100, width: 100),
              SizedBox(
                height: 20,
              ),
              Text("You Won This Round",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Next", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
