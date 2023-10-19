import 'package:cts_biometric/src/base/base.dart';
import 'package:flutter/material.dart';

class BiometricPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            Base.biometricController.fingerprintAuthentication();
          },
          iconSize: 100,
          icon: Icon(
            Icons.fingerprint,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
