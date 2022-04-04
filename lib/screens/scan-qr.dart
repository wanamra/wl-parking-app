import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ourcarmyplus/widgets/a-text.dart';
import 'package:scan/scan.dart';

class ScanQrPage extends StatefulWidget {
  @override
  State<ScanQrPage> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
  ScanController controller = ScanController();
  String qrcode = 'Unknown';
  String _platformVersion = 'Unknown';
  bool _lightOff = true;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await Scan.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AText(
                'Place your QR/Bar Code inside the area',
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 8),
              AText(
                'Scanning will start automatically',
                size: 12,
                color: Colors.grey.shade600,
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 400,
                child: ScanView(
                  controller: controller,
                  scanAreaScale: .7,
                  scanLineColor: Theme.of(context).primaryColor,
                  onCapture: (data) {
                    log(data);
                    Navigator.of(context).pushNamed('/payment-details');
                  },
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 18,
                    color: Colors.grey.shade500,
                  ),
                  SizedBox(width: 20),
                  AText(
                    "Scan the tickets's QR Code/Barcode",
                    size: 12,
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
              SizedBox(height: 20),
              IconButton(
                icon: Icon(_lightOff
                    ? Icons.flashlight_off_outlined
                    : Icons.flashlight_on_outlined),
                onPressed: () {
                  setState(() {
                    _lightOff = !_lightOff;
                    controller.toggleTorchMode();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
