import 'package:flutter/material.dart';
import 'package:lecture_01_basics/models/contact_book.dart';
import 'package:lecture_01_basics/views/add_contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContactBook contactBook = ContactBook();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        final contact = contactBook.contact(atIndex: index);
        return ListTile(
          title: Text(contact!.name),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_){
            AddContact(),
          },))
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
