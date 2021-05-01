import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTodoPage extends StatefulWidget {
  @override
  _AddTodoPageState createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final _formKey = GlobalKey<FormState>();

  String _title = '';
  String _priority = '';
  DateTime _date = DateTime.now();

  final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');
  final List<String> _priorities = ['Low', 'Medium', 'High'];

  TextEditingController _dateController = TextEditingController();

  _handleDatePicker() async {
    final DateTime date = (await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)))!;
    if (date != null && date != _date) {
      setState(() {
        _date = date;
      });
      _dateController.text = _dateFormatter.format(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Add Todo',
            style: TextStyle(
                color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
              key: _formKey,
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    style: TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: TextStyle(fontSize: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (input) =>
                        input!.trim().isEmpty ? 'Please enter a todo' : null,
                    onSaved: (input) => _title = input!,
                    initialValue: _title,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: DropdownButtonFormField(
                    icon: Icon(Icons.arrow_drop_down_circle),
                    iconSize: 22,
                    iconEnabledColor: Theme.of(context).primaryColor,
                    items: _priorities.map((String priority) {
                      print(priority);
                      return DropdownMenuItem(
                          child: Text(priority,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18)));
                    }).toList(),
                    style: TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                        labelText: 'Priority',
                        labelStyle: TextStyle(fontSize: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                      controller: _dateController,
                      onTap: _handleDatePicker,
                      style: TextStyle(fontSize: 10),
                      decoration: InputDecoration(
                          labelText: 'Date',
                          labelStyle: TextStyle(fontSize: 10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                )
              ]))
        ],
      ),
    );
  }
}
