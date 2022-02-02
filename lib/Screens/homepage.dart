import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0; // 0 in the beginning;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Q${index + 1}. ${questions[index].question}",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            onTap: () {
              verifyAnswer(0, questions[index].correctOption);
            },
            title: Text('1. ${questions[index].options[0]}'),
          ),
          Divider(),
          ListTile(
            onTap: () {
              verifyAnswer(1, questions[index].correctOption);
            },
            title: Text('2. ${questions[index].options[1]}'),
          ),
          Divider(),
          ListTile(
            onTap: () {
              verifyAnswer(2, questions[index].correctOption);
            },
            title: Text('3. ${questions[index].options[2]}'),
          ),
          Divider(),
          ListTile(
            onTap: () {
              verifyAnswer(3, questions[index].correctOption);
            },
            title: Text('4. ${questions[index].options[3]}'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //reload the UI;
          setState(() {
            index += 1;
            index = index % questions.length;
          });
          
          print('Im pressed!');
        },
        child: Icon(
          Icons.navigate_next,
          size: 35,
        ),
      ),
    );
  }

  verifyAnswer(int chosenOption, int correctOption) {
    if (chosenOption == correctOption) {
      setState(() {
        index += 1;
        index = index % questions.length;
      });
      final snackBar = SnackBar(
        content: Text("Correct Answer!"),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    } else {

      final snackBar = SnackBar(
        content: Text("Wrong Answer!"),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
