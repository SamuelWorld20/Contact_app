import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import './/data/contact.dart';
import './/ui/contacts_list/widget/contact_tile.dart';

class ContactsListPage extends StatefulWidget {
  @override
  State<ContactsListPage> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsListPage> {
  late List<Contact> _contacts = [];

  // Runs when the widget is initialized
  @override
  void initState() {
    super.initState();
    _contacts = List.generate(
      50,
      (index) => Contact(
        name: Faker().person.firstName() + ' ' + Faker().person.lastName(),
        email: Faker().internet.freeEmail(),
        phoneNumber: Faker().randomGenerator.integer(1000000).toString(),
      ),
    );
  }

  // build() runs when the state changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) => ContactTile(contacts: _contacts),
      ),
    );
  }
}
