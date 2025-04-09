import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_list/models/todo.dart';

const String TODO_COLLECTION_REF = "todos";

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;

  late final CollectionReference _todosRef;

  DatabaseService() {
    _todosRef = _firestore.collection(TODO_COLLECTION_REF).withConverter<Todo>(
          fromFirestore: (snapshot, _) {
            final data = snapshot.data();
            if (data == null) {
              throw Exception('Missing data for Todo with ID: ${snapshot.id}');
            }
            return Todo.fromJson(data);
          },
          toFirestore: (todo, _) => todo.toJson(),
        );
  }

  Stream<QuerySnapshot> getTodos() {
    return _todosRef.snapshots();
  }

  void addTodo(Todo todo) async {
    _todosRef.add(todo);
  }

  Future<void> updateTodo(String todoId, Todo updatedTodo) async {
    await _todosRef.doc(todoId).update(updatedTodo.toJson());
  }

  Future<void> deleteTodo(String todoId) async {
    await _todosRef.doc(todoId).delete();
  }
}
