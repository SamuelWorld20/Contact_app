import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Contact test',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Contact test',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Contact test',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Contact test',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Contact test',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
