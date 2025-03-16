/*
 3. To-Do List App:
 Create a to-do list program using a List where each item has a description, due date, and
 completion status (as bool). Implement methods to add, remove, and update tasks, including the
 use of for-each loops.
*/

import 'dart:io';

void main() {
  while (true) {
    print(
      "\nChoose an option:\n 1 Add Task\n 2 Remove Task\n 3 Update Task\n 4️ View Tasks\n 5️ Exit",
    );
    print("Enter choice: ");
    String choice = stdin.readLineSync()!;

    if (choice == "1") {
      print("Enter task: ");
      String task = stdin.readLineSync()!;
      addTask(task);
    } else if (choice == "2") {
      print("Enter task to remove: ");
      String task = stdin.readLineSync()!;
      removeTask(task);
    } else if (choice == "3") {
      print("Enter task to update: ");
      String task = stdin.readLineSync()!;
      updateTask(task);
    } else if (choice == "4") {
      print("\n Your Tasks:");
      for (int i = 0; i < tasks.length; i++) {
        print(
          "${tasks[i]} | Status: ${completionStatus[i] ? " Completed" : "Pending"}",
        );
      }
    } else if (choice == "5") {
      print(" Exiting...");
      break;
    } else {
      print(" Invalid choice.");
    }
  }
}

List<String> tasks = [];
List<bool> completionStatus = [];

void addTask( task) {
  tasks.add(task);
  completionStatus.add(false);
  print(" Task Added: $task");
}

void removeTask(task) {
  tasks.remove(task);
  completionStatus.remove(task);
  print(" Task Removed: $task");
}

void updateTask(task) {
  for (int i = 0; i < tasks.length; i++) {
    if (tasks[i] == task) {
      completionStatus[i] = true;
      print("Task Completed: $task");
    } else {
      print(" Not Found.");
    }
  }
}


