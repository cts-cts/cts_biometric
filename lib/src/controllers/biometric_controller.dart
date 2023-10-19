import 'package:cts_biometric/src/helpers/klog.dart';
import 'package:cts_biometric/src/pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class BiometricController extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();

  void fingerprintAuthentication() async {
    final canAuthenticate = await auth.canCheckBiometrics;
    final isDeviceSupported = await auth.isDeviceSupported();

    try {
      if (isDeviceSupported && canAuthenticate) {
        final didAuthenticate = await auth.authenticate(
          localizedReason: 'Please authenticate to access the app',
          options: AuthenticationOptions(
            biometricOnly: true,
          ),
        );
        if (didAuthenticate) {
          Get.offAll(() => HomePage());
        }
      }

      // ···
    } on PlatformException catch (e) {
      klog(e);
      // ...
    }
  }
}
