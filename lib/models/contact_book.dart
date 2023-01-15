import 'package:lecture_01_basics/models/contact.dart';

class ContactBook {
  //Singleton object
  ContactBook._internal();
  static final ContactBook _shared = ContactBook._internal();
  factory ContactBook() => _shared;

  final List<Contact> _contacts = [];

  int get length => _contacts.length;

  void add({required Contact contact}) => _contacts.add(contact);

  void remove({required Contact contact}) => _contacts.remove(contact);

  Contact? contact({required atIndex}) =>
      _contacts.length > atIndex ? _contacts[atIndex] : null;
}
