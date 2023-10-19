import 'package:flutter/material.dart';

class Contact {
  String name;
  String email;
  String phoneNumber;

  // Constructor with optional named parameters
  Contact({
    // @required annotation makes sure that an
    // optional parameter is actually passed in
    @required this.name,
    @required this.email,
    @required this.phoneNumber,
  });
}
