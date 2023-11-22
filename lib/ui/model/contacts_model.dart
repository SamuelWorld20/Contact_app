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
}