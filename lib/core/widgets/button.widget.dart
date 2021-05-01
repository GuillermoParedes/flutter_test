import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {},
          color: Colors.yellow,
          disabledTextColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 20.0,
          splashColor: Colors.green,
          highlightColor: Colors.red,
          highlightElevation: 1.0,
          child: Text("Raised Button"),
        ),
      ),
    );
  }
}
