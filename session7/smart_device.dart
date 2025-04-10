abstract class SmartDevice {
  final String name;
  bool isOn = false;

  SmartDevice(this.name);

  void turnOn() {
    isOn = true;
    print('$name is turned ON');
  }

  void turnOff() {
    isOn = false;
    print('$name is turned OFF');
  }
}
