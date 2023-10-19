import 'package:cts_biometric/src/controllers/biometric_controller.dart';
import 'package:get/get.dart';
import 'package:cts_biometric/src/controllers/config_controller.dart';

class BaseBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigController());
    Get.lazyPut(() => BiometricController());
  }
}
