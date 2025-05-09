import 'package:path_provider/path_provider.dart';
import 'package:isar/isar.dart';
import 'package:veri_tabani/models/todo_model.dart';
import 'package:veri_tabani/models/todo_model.dart';
class DatabaseService {

  static late Isar isar;

  //Isar'ı Başlat

  static Future<void> initialize () async{
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([TodoSchema], directory: dir.path,inspector: true);
  }

  //Görevler İçin Liste

  List<Todo> currentTodos = [];

  //Görev Ekle
  Future<void> addTodo(String text) async{
    final newTodo = Todo()..text =text;
    await isar.writeTxn(() => isar.todos.put(newTodo));
    await fetchTodos();
  }
  //Görevleri Getir

    Future<void> fetchTodos () async {

    currentTodos = await isar.todos.where().findAll();

    }

  //Görev Güncelle

  Future<void> updateTodos ({required int id ,required String text , bool isDone = false }) async {
    final existingTodo = await isar.todos.get(id);
    if (existingTodo != null){
      existingTodo..text = text
        ..isDone = isDone;
      await isar.writeTxn( () => isar.todos.put(existingTodo));
    }
    fetchTodos();
  }

  //Görev Sil

  Future<void> deleteTodo(int id ) async {
    await isar.writeTxn(()=> isar.todos.delete(id));
    await fetchTodos();
  }
}