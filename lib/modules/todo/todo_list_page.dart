import 'package:flutter/material.dart';
import 'package:poc_forms_dynamic/modules/todo/add_todo.page.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddTodoPage()));
        },
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 80),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My Tasks',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '1 of 10',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            );
          }
          return buildTasks(index);
          // return Container(
          //     margin: EdgeInsets.all(10),
          //     height: 100,
          //     width: double.infinity,
          //     color: Colors.red);
        },
      ),
    );
  }

  Widget buildTasks(int index) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: double.infinity,
        child: ListTile(
          title: Text('Task title'),
          subtitle: Text('Oct 2, 2019 ~ High'),
          trailing: Checkbox(
            activeColor: Theme.of(context).primaryColor,
            value: true,
            onChanged: (value) {
              print(value);
            },
          ),
        ));
  }
}
