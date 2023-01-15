import 'package:flutter/cupertino.dart';
import 'package:lecture_01_basics/models/contact.dart';

class ContactBook extends ValueNotifier<List<Contact>> {
  //Singleton object
  ContactBook._internal() : super([]);
  static final ContactBook _shared = ContactBook._internal();
  factory ContactBook() => _shared;

  //value notifier holds value and expose it do we don't need it
  // final List<Contact> _contacts = [];

  int get length => value.length;

  void add({required Contact contact}) {
    value.add(contact);
    notifyListeners();
  }

  void remove({required Contact contact}) {
    if (value.contains(contact)) {
      value.remove(contact);
      notifyListeners();
    }
  }

  Contact? contact({required atIndex}) =>
      value.length > atIndex ? value[atIndex] : null;
}
