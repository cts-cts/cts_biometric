import 'package:cts_biometric/src/controllers/biometric_controller.dart';
import 'package:get/get.dart';
import 'package:cts_biometric/src/controllers/config_controller.dart';

class Base {
  Base._();

  static final configController = Get.find<ConfigController>();

  static final biometricController = Get.find<BiometricController>();
}
