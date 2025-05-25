import 'smart_device.dart';

class Light extends SmartDevice {
  Light(String name) : super(name);

  void dim(int level) {
    print('$name dimmed to $level%');
  }
}
