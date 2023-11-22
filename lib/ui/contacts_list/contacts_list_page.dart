import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
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
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) => ContactTile(
          contacts: _contacts[index],
          onFavoritePressed: () {
            setState(() {
              _contacts[index].isFavorite = !_contacts[index].isFavorite;
              // Takes in a higher order function which gets passed two contacts
              _contacts.sort((a, b) {
                if (a.isFavorite) {
                  // contactOne will be BEFORE contactTwo
                  return -1;
                } else if (b.isFavorite) {
                  // contactOne will be AFTER contactTwo
                  return 1;
                } else {
                  // the position doesn't change
                  return 0;
                }
              });
            });
          },
        ),
      ),
    );
  }
}
