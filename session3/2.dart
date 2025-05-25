/*
 2. Grocery List Manager:
 Implement a program that uses a List to store grocery items. It should allow adding, removing, and
 displaying items. Use functions with return types and optional/named parameters. Make sure to
 handle possible null values.
 */

void main() {
  List<String?> groceryList = [];
  addItem(groceryList, 'Apples');
  addItem(groceryList, 'Bananas');
  addItem(groceryList, null); 
  addItem(groceryList, 'Orange');

 
  displayItems(groceryList);

  removeItem(groceryList, 'Bananas');

  displayItems(groceryList);
}


void addItem(List<String?> list, String? item) {
  if (item != null && item.isNotEmpty) {
    list.add(item);
    print('Added: $item');
  } else {
    print('Cannot add empty item.');
  }
}


bool removeItem(List<String?> list, String item) {
  if (list.contains(item)) {
    list.remove(item);
    print('Removed: $item');
    return true;
  } else {
    print('Item not found: $item');
    return false;
  }
}


void displayItems(List<String?> list) {
  if (list.isEmpty) {
    print('Grocery list is empty.');
  } else {
    print('Grocery List:');
    for (var item in list) {
      print(item);
    }
  }
}