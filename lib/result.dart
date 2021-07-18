import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetHandler;

  Result(this._resultScore, this._resetHandler);

  String get resultPhrase {
    String resultText;
    if (_resultScore <= 5) {
      resultText = "You are awesome and innocent!";
    } else if (_resultScore <= 7) {
      resultText = "Pretty Likeable!";
    } else if (_resultScore <= 9) {
      resultText = "You are strange!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: _resetHandler,
          child: Text(
            "Restart Quiz",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    ));
  }
}
