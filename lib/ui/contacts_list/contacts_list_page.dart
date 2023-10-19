import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => Center(
          child: Text(
            'Contact test',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
