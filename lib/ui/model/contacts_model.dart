import 'package:scoped_model/scoped_model.dart';
import 'package:faker/faker.dart';
import './/data/contact.dart';

class ContactsModel extends Model {
  late List<Contact> _contacts = List.generate(
    50,
    (index) => Contact(
      name: Faker().person.firstName() + ' ' + Faker().person.lastName(),
      email: Faker().internet.freeEmail(),
      phoneNumber: Faker().randomGenerator.integer(1000000).toString(),
    ),
  );

  // get only property, makes sure that that the property is not accessed from another class
  List<Contact> get contacts => _contacts;

  void changeFavoriteStatus(int index) {
    _contacts[index].isFavorite = !_contacts[index].isFavorite;
    _sortContacts();
    notifyListeners();
  }

  void _sortContacts() {
    _contacts.sort((a, b) {
      int comparisonResult;

      comparisonResult = _CompareBasedOnFavoriteStatus(a, b);

      if (comparisonResult == 0) {
        comparisonResult = _compareAlphabetically(a, b);
      }

      return comparisonResult;
    });
  }

  int _CompareBasedOnFavoriteStatus(Contact a, Contact b) {
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
  }

  int _compareAlphabetically(Contact a, Contact b) {
    return a.name.compareTo(b.name);
  }
}
