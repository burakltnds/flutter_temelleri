import 'package:isar/isar.dart';

part 'todo_model.g.dart';

@collection
class Todo {
  Id id = Isar.autoIncrement;

  String? text;
  DateTime? datetime = DateTime.now() ;
  bool isDone =false;
}