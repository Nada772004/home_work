

class Person {
  String _name;
  int? _age; 
  bool _isStudent;

  Person(this._name, {int? age, bool isStudent = false})
      : _age = age,
        _isStudent = isStudent;

  String get name => _name;
  int? get age => _age;
  bool get isStudent => _isStudent;

  set age(int? value) {
    if (value != null && value < 0) {
      print("Age cannot be negative.");
    } else {
      _age = value;
    }
  }

  set isStudent(bool value) {
    _isStudent = value;
  }

  void displayInfo() {
    print("Name: $_name");
    print("Age: ${_age ?? 'Unknown'}"); 
    print("Is Student: ${_isStudent ? 'Yes' : 'No'}");
  }
}
