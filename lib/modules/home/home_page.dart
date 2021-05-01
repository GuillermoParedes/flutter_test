import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:poc_forms_dynamic/core/schema/schema.dart';
import 'package:poc_forms_dynamic/core/widgets/wrapper.widget.dart';

class HomePage extends StatefulWidget {
  List<SchemaForm> schemaForm = [
    SchemaForm('Input', 'Input 1', 'Subtitule 1', true),
    SchemaForm('Input', 'Input 1', 'Subtitule 1', true),
    SchemaForm('Input', 'Input 1', 'Subtitule 1', true),
    SchemaForm('Input', 'Input 1', 'Subtitule 1', true)
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    log("schemaForm: $widget.schemaForm");
    log(widget.schemaForm.length.toString());
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () {
            print('Hola mundo');
          },
        ),
        body: WrapperWidget(
          schemaForm: widget.schemaForm,
        ));
  }
}
