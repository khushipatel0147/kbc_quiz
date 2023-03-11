import 'package:flutter/material.dart';
import 'package:kbc_quiz/Screen/finalScreen.dart';
import 'package:kbc_quiz/Screen/levalScreen.dart';
import 'package:kbc_quiz/Screen/looseScreen.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  List Qestion = [
    "1.Current Railway Minister of India is",
    "2.Which god is also known as 'Gauri Nandan'?",
    "3.What does not grow on tree according to a popular Hindi saying?",
    "4.Which city is known as Pink City in India?",
    "5.Who wrote India's National Anthem?",
    "6.How many religions are there in India?",
    "7.When is the National Hindi Diwas celebrated?",
    "8.How many states are there in India?",
    "9.Where in India Gate located?",
    "10.Who wrote Vande Mataram?",
  ];
  List trueAns = [
    "C.Ashwini Vaishnaw",
    "D.Ganesha",
    "B.Money",
    "D.Jaipur",
    "D.Rabindranath Tagore",
    "C.6",
    "D.14 September",
    "B.28",
    "A.New Delhi",
    "A.Bankim Chandra Chatterjee",
  ];
  List usranslist = [];
  List AansList = [
    "A.Ram Vilash",
    "A.Hanuman",
    "A.Fruits",
    "A.Maysore",
    "A.Lal Bahadur Shastri",
    "A.8",
    "A.14 July",
    "A.31",
    "A.New Delhi",
    "A.Bankim Chandra Chatterjee",
  ];
  List BansList = [
    "B.Mamta Banarjee",
    "B.Agni",
    "B.Money",
    "B.Banglore",
    "B.Chetan Bhagat",
    "B.9",
    "B.15 August",
    "B.28",
    "B.Punjab",
    "B.Rabindranath Tagore",
  ];
  List CansList = [
    "C.Ashwini Vaishnaw",
    "C.Indra",
    "C.Leaves",
    "C.Kochi",
    "C.RK Narayan",
    "C.6",
    "C.13 September",
    "C.29",
    "C.Mumbai",
    "C.Ishwar Chandra Vidyasagar",
  ];
  List DansList = [
    "D.Piyush Goyal",
    "D.Ganesha",
    "D.Flowers",
    "D.Jaipur",
    "D.Rabindranath Tagore",
    "D.7",
    "D.14 September",
    "D.30",
    "D.Agra",
    "D.Sarat Chandra Chattopadhyay",
  ];
  List C = [
    Colors.pinkAccent,
    Colors.blue,
    Colors.amber,
    Colors.green,
    Colors.indigoAccent,
    Colors.purple,
    Colors.redAccent,
    Colors.deepOrangeAccent,
    Colors.indigoAccent,
    Colors.lightBlueAccent,
  ];
  int i = 0, j = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: C[i],
              ),
              child: Center(
                  child: Text("${Qestion[i]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
            ),
            Expanded(
              child: Container(
                height: 400,
                width: double.infinity,
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (j < 11) {
                                usranslist.add("${AansList[i]}");
                                setState(() {
                                  if (usranslist[i] == trueAns[i]) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Grow(),
                                        ));
                                    if (i < 9) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 9) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Error(),
                                        ));
                                    i = 0;
                                    j = 0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Text("${AansList[i]}",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (j < 11) {
                                usranslist.add("${BansList[i]}");

                                setState(() {
                                  if (usranslist[i] == trueAns[i]) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Grow(),
                                        ));
                                    if (i < 9) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 9) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Error(),
                                        ));
                                    i = 0;
                                    j = 0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Text("${BansList[i]}",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (j < 11) {
                                usranslist.add("${CansList[i]}");
                                setState(() {
                                  if (usranslist[i] == trueAns[i]) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Grow(),
                                        ));
                                    if (i < 9) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 9) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Error(),
                                        ));
                                    i = 0;
                                    j = 0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Text("${CansList[i]}",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              if (j < 11) {
                                usranslist.add("${DansList[i]}");

                                setState(() {
                                  if (usranslist[i] == trueAns[i]) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Grow(),
                                        ));
                                    if (i < 9) {
                                      i++;
                                      j++;
                                    }
                                    if (i == 9) {
                                      j++;
                                    }
                                  } else {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Error(),
                                        ));
                                    i = 0;
                                    j = 0;
                                    usranslist.clear();
                                  }
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Text("${DansList[i]}",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: j >= 11 ? true : false,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Result(),
                                  ));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              fixedSize: Size(100, 50)),
                          child: Center(
                            child: Text(
                              "Result",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
