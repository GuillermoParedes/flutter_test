import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:poc_forms_dynamic/core/schema/schema.dart';

class WrapperWidget extends StatefulWidget {
  final List<SchemaForm> schemaForm;

  WrapperWidget({required this.schemaForm});

  @override
  _WrapperWidgetState createState() => _WrapperWidgetState();
}

class _WrapperWidgetState extends State<WrapperWidget> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: renderList(context),
    // );
    return renderList(context);
  }

  Widget renderList(BuildContext context) {
    return ListView.builder(
      itemCount: widget.schemaForm.length,
      itemBuilder: (BuildContext context, int index) {
        log(widget.schemaForm[index].label);
        return item(context, index);
      },
    );
  }

  Widget item(BuildContext context, int index) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: double.infinity,
        child: ListTile(
          title: Text(widget.schemaForm[index].label),
          subtitle: Text(widget.schemaForm[index].subtitle),
          trailing: Checkbox(
            activeColor: Theme.of(context).primaryColor,
            value: widget.schemaForm[index].checked,
            onChanged: (value) {
              print(value);
            },
          ),
        ));
  }
}
