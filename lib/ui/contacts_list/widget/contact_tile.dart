import 'package:demo/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import './/data/contact.dart';

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.contactIndex,
    // required this.onFavoritePressed,
  }) : super(key: key);

  final int contactIndex;
  // final void Function() onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    final model = ScopedModel.of<ContactsModel>(context);
    final displayedContact = model.contacts[contactIndex];
    return ListTile(
      title: Text(displayedContact.name),
      subtitle: Text(displayedContact.email),
      trailing: IconButton(
        icon: Icon(
          displayedContact.isFavorite ? Icons.star : Icons.star_border,
          color: displayedContact.isFavorite ? Colors.amber : Colors.grey,
        ),
        onPressed: () {
          model.changeFavoriteStatus(contactIndex);
        },
      ),
    );
  }
}
