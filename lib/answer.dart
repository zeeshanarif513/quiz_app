import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _checkHandler;
  final String _answerText;
  Answer(this._checkHandler, this._answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: RaisedButton(
        child: Text(
          _answerText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: _checkHandler,
        color: Colors.blue,
      ),
    );
  }
}
