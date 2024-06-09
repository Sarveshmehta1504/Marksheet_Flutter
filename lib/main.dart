import 'package:flutter/material.dart';
void main() {
  runApp(const Marksheet());
}
class Marksheet extends StatelessWidget {
  const Marksheet({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marksheet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Marksheet'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
//Variables
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  var result = "";
  var status = "";
  var percentage = "";

//Functions
  void doTotal() {
    var c = txt1.text;
    var cpp = txt2.text;
    var java = txt3.text;
    var python = txt4.text;
    var dart = txt5.text;
    var sum = int.parse(c) +
        int.parse(cpp) +
        int.parse(java) +
        int.parse(python) +
        int.parse(dart);
    var per = (sum * 100) / 500;
    var rank = "";
    if (per >= 80) {
      rank = "First Class";
    } else if (per < 80 && per >= 60) {
      rank = "Second Class";
    } else {
      rank = "Fail";
    }
    setState(() {
      percentage = "$per%";
      result = "$sum";
      status = rank;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
      height: 30,
    ),
    const Text('Enter your marks according to subjects (out of 100) :',
      style: TextStyle(
      fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white54,
      ),
    ),
    Container(
    height: 30,
    ),
    const Text(
    "1. English",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white54,
    ),
    ),
    TextField(
    controller: txt1,
    keyboardType: TextInputType.number,
    style: const TextStyle(
    color: Colors.lime,
    ),
    ),
    Container(
    height: 10,
    ),
    const Text(
    "2. Science",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white54,
    ),
    ),
    TextField(
    controller: txt2,
    keyboardType: TextInputType.number,
    style: const TextStyle(
    color: Colors.lime,
    ),
    ),
    Container(
    height: 10,
    ),
    const Text(
    "3. Maths",style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white54,
    ),
    ),
    TextField(
    controller: txt3,
    keyboardType: TextInputType.number,
    style: const TextStyle(
    color: Colors.lime,
    ),
    ),
    Container(
    height: 10,
    ),
    const Text(
    "4. Computer",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white54,
    ),
    ),
    TextField(
    controller: txt4,
    keyboardType: TextInputType.number,
    style: const TextStyle(
    color: Colors.lime,
    ),
    ),
    Container(
    height: 10,
    ),
    const Text(
    "5. SST",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Colors.white54,
    ),
    ),
    TextField(
    controller: txt5,
    keyboardType: TextInputType.number,
    style: const TextStyle(
    color: Colors.lime,
    ),),
    Container(
    height: 20,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    FloatingActionButton(
    onPressed: doTotal,
    tooltip: "Result",
    backgroundColor: Colors.purple[100],
    child: const Text(
    "Get Result",
    textAlign: TextAlign.center,
    ),
    )
    ],
    ),
    Container(height: 10,),
    Text(
    "Total Marks: $result\nPercentage:$percentage\nResult: $status",
    style: const TextStyle(
    color: Colors.white54,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),
    )
    ],
    ),
    ),
    );
  }
}