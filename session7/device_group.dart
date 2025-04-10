import 'smart_device.dart';

class DeviceGroup {
  final String name;
  final List<SmartDevice> devices = [];

  DeviceGroup(this.name);

  void addDevice(SmartDevice device) {
    devices.add(device);
  }

  void turnAllOn() {
    print('Turning on all devices in $name:');
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    print('Turning off all devices in $name:');
    for (var device in devices) {
      device.turnOff();
    }
  }
}
