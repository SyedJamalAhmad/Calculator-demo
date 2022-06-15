import 'package:flutter/material.dart';
void main() => runApp(myApp());
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  Widget calcbutton(String btntxt, Color btncolor, Color textcolor){
    return Container(
      child: ElevatedButton(onPressed: (){

      },
        child: Text(btntxt),
          style: ElevatedButton.styleFrom(
            primary: btncolor,
            onPrimary: textcolor,
            textStyle: TextStyle(fontSize: 26.0),
            padding: EdgeInsets.all(20.0),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(60.0),
            ),
        ),
        ),
    );




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Calculator"),backgroundColor: Colors.orange,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.fromLTRB(20, 50, 10, 80),
              child : Text("3,670",
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black,
              fontSize: 100),
              ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton('AC', Colors.white, Colors.grey.shade700),
              calcbutton('+/-', Colors.white, Colors.grey.shade700),
              calcbutton('%', Colors.white, Colors.grey.shade700),
              calcbutton('/', Colors.white, Colors.orange),
            ],
          ),
          SizedBox(height: 10,),

         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton('7', Colors.white, Colors.black),
              calcbutton('8', Colors.white, Colors.black),
              calcbutton('9', Colors.white, Colors.black),
              calcbutton('x', Colors.white, Colors.orange),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton('4', Colors.white, Colors.black),
              calcbutton('5', Colors.white, Colors.black),
              calcbutton('6', Colors.white, Colors.black),
              calcbutton('-', Colors.white, Colors.orange),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton('1', Colors.white, Colors.black),
              calcbutton('2', Colors.white, Colors.black),
              calcbutton('3', Colors.white, Colors.black),
              calcbutton('+', Colors.white, Colors.orange),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          ElevatedButton(
          child: Text('0'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              textStyle: TextStyle(fontSize: 26.0),
              padding: EdgeInsets.fromLTRB(34, 20, 100, 20),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(60.0),
              ),
            ),
          onPressed: () {
      },
    ),
              calcbutton('.', Colors.white, Colors.black),
              calcbutton('=', Colors.white, Colors.orange),
            ],
          ),
        ],


      ),

    );
  }

}
