import 'smart_device.dart';

class AirConditioner extends SmartDevice {
  AirConditioner(String name) : super(name);

  void setTemperature(double temperature) {
    print('$name temperature set to $temperature°C');
  }
}
