import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:scoped_model/scoped_model.dart';
import '../model/contacts_model.dart';
import './/data/contact.dart';
import './/ui/contacts_list/widget/contact_tile.dart';

class ContactsListPage extends StatefulWidget {
  @override
  State<ContactsListPage> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsListPage> {
  // Runs when the widget is initialized

  // build() runs when the state changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ScopedModelDescendant<ContactsModel>(
          builder: (context, child, model) {
        return ListView.builder(
          itemCount: model.contacts.length,
          itemBuilder: (context, index) => ContactTile(
            contactIndex: index,
          ),
        );
      }),
    );
  }
}
