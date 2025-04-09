import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  late String task;
  late bool isdone;
  late Timestamp createdOn;
  late Timestamp updatedOn;

  Todo({
    required this.task,
    required this.isdone,
    required this.createdOn,
    required this.updatedOn,
  });

// ignore: non_constant_identifier_names
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      task: json['task']?.toString() ?? '',
      isdone: json['isdone'] is bool ? json['isdone'] as bool : false,
      createdOn: json['createdOn'] is Timestamp
          ? json['createdOn'] as Timestamp
          : Timestamp.now(),
      updatedOn: json['updatedOn'] is Timestamp
          ? json['updatedOn'] as Timestamp
          : Timestamp.now(),
    );
  }

  Todo copyWith(
      {String? task,
      bool? isDone,
      Timestamp? createdOn,
      Timestamp? updatedOn}) {
    return Todo(
        task: task ?? this.task,
        isdone: isdone ?? this.isdone,
        createdOn: createdOn ?? this.createdOn,
        updatedOn: updatedOn ?? this.updatedOn);
  }

  Map<String, Object?> toJson() {
    return {
      'task': task,
      'isdone': isdone,
      'createdOn': createdOn,
      'updatedOn': updatedOn
    };
  }
}
