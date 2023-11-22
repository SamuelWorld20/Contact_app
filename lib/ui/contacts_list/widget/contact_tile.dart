import 'package:flutter/material.dart';
import './/data/contact.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.contacts,
    required this.onFavoritePressed,
  }) : super(key: key);

  final Contact contacts;
  final void Function() onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contacts.name),
      subtitle: Text(contacts.email),
      trailing: IconButton(
        icon: Icon(
          contacts.isFavorite ? Icons.star : Icons.star_border,
          color: contacts.isFavorite ? Colors.amber : Colors.grey,
        ),
        onPressed: onFavoritePressed,
      ),
    );
  }
}
