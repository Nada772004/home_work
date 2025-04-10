import 'smart_device.dart';

class SecurityCamera extends SmartDevice {
  SecurityCamera(String name) : super(name);

  void detectMotion() {
    print('$name is detecting motion');
  }
}
