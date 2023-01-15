import 'package:uuid/uuid.dart';

class Contact {
  final String name;
  final String id;

  Contact(this.name) : id = const Uuid().v4();
}
