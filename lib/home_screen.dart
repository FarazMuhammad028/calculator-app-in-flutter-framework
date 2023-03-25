import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String expression = "";
  String result = "";
  String equation = "";
  Color green = Color.fromARGB(255, 92, 183, 64);
  Color pink = const Color.fromARGB(0, 255, 0, 179);
  Color red = const Color.fromARGB(0, 255, 30, 0);
  Widget myCutomButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        height: buttonHeight * 90,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: MaterialButton(
            child: Text(
              buttonText,
              style: const TextStyle(fontSize: 30),
            ),
            onPressed: () {}),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Let's Calculate",
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              equation,
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              result,
              style: const TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
          const Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(children: [
                  TableRow(children: [
                    myCutomButton("C", 1, green),
                    myCutomButton("Del", 1, green),
                    myCutomButton("÷", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton("7", 1, green),
                    myCutomButton("8", 1, green),
                    myCutomButton("9", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton("4", 1, green),
                    myCutomButton("5", 1, green),
                    myCutomButton("6", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton("1", 1, green),
                    myCutomButton("2", 1, green),
                    myCutomButton("3", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton(".", 1, green),
                    myCutomButton("0", 1, green),
                    myCutomButton(".00", 1, green),
                  ]),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Table(children: [
                  TableRow(children: [
                    myCutomButton("x", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton("-", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton("+", 1, green),
                  ]),
                  TableRow(children: [
                    myCutomButton("=", 2, green),
                  ]),
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
