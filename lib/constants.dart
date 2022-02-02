

import 'package:quiz_app/Models/question.dart';

List questions = [
  Question(
      question: "Which type of app can flutter make?",
      options: ["Mobile", "Web", "Desktop", "All of the above"],
      correctOption: 3),
  Question(
      question: "Which is the Best club of our college?",
      options: [
        "Cops with capital C",
        "cOps with capital O",
        "coPs with capital P",
        "copS with capital S"
      ],
      correctOption: 0),
  Question(
      question: "How many months have 28 days?",
      options: [
        "2",
        "1",
        "All of them",
        "Depends if there\'s leap year or not"
      ],
      correctOption: 2),
  Question(
      question: "Divide 30 by half and add ten. ",
      options: ["40.5", "70", "25", "none"],
      correctOption: 1),
  Question(
      question:
          "There are 45 apples in your basket. You take three apples out of the basket. How many apples are left?",
      options: ["3", "42", "45", "0"],
      correctOption: 2),
];
