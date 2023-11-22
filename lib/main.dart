import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import './ui/contacts_list/contacts_list_page.dart';
import './ui/model/contacts_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ContactsModel(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ContactsListPage(),
      ),
    );
  }
}
