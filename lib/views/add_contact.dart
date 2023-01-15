import 'package:flutter/material.dart';
import 'package:lecture_01_basics/models/contact.dart';
import 'package:lecture_01_basics/models/contact_book.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  late TextEditingController _contactCtrl;

  @override
  void initState() {
    _contactCtrl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _contactCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Contact'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _addContactTextField(),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              var contact = Contact(_contactCtrl.text);
              ContactBook().add(contact: contact);
              Navigator.pop(context);
            },
            child: const Text('Add Contact'),
          ),
        ],
      ),
    );
  }

  Widget _addContactTextField() {
    return TextField(
      controller: _contactCtrl,
    );
  }
}
