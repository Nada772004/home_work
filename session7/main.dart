import 'light.dart';
import 'air_conditioner.dart';
import 'security_camera.dart';
import 'device_group.dart';

void main() {
  var light = Light("Living Room Light");
  var ac = AirConditioner("Bedroom ACB");
  var camera = SecurityCamera(" DD Camera");

  var homeGroup = DeviceGroup("Home Devices");
  homeGroup.addDevice(light);
  homeGroup.addDevice(ac);
  homeGroup.addDevice(camera);

  homeGroup.turnAllOn();

  light.dim(70);
  ac.setTemperature(23.5);
  camera.detectMotion();

  homeGroup.turnAllOff();
}
