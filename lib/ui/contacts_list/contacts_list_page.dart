import 'package:demo/data/contact.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import './/data/contact.dart';

class ContactsListPage extends StatefulWidget {
  @override
  State<ContactsListPage> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsListPage> {
  List<Contact> _contacts = List.generate(
    50,
    (index) => Contact(
      name: Faker().person.firstName() + ' ' + Faker().person.lastName(),
      email: Faker().internet.freeEmail(),
      phoneNumber: Faker().randomGenerator.integer(1000000).toString(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(_contacts[index].name),
          subtitle: Text(_contacts[index].email),
        ),
      ),
    );
  }
}
