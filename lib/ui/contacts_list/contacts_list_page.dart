import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: 30,
        // Runs and build every single list item
        itemBuilder: (context, index) => Center(
          child: Text(
            Faker().person.firstName() + ' ' + Faker().person.lastName(),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
