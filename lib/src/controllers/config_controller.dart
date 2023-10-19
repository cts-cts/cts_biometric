import 'package:cts_biometric/src/pages/biometric_page.dart';
import 'package:get/get.dart';

class ConfigController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await 2.delay();
    Get.to(() => BiometricPage());
  }
}
