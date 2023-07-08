// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
// import 'package:location_permissions/location_permissions.dart';

// // import 'dart:io' show Platform;

// // import 'package:location_permissions/location_permissions.dart';

// // <uses-permission android:name="android.permission.BLUETOOTH_SCAN"
// //                      tools:remove="android:usesPermissionFlags"
// //                      tools:targetApi="s" />
// //     <uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
// //     <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" android:maxSdkVersion="30" />
// //     <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />

// class HomePage extends StatefulWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _flutterReactiveBle = FlutterReactiveBle();

//   late Stream<DiscoveredDevice> _deviceStream;
//   late StreamSubscription<DiscoveredDevice>? _scanSubscription;

//   Future<void> startScan() async {
//     bool permGranted = true;

//     PermissionStatus permission;
//     if (Platform.isAndroid) {
//       permission = await LocationPermissions().requestPermissions();
//       if (permission == PermissionStatus.granted) permGranted = true;
//     } else if (Platform.isIOS) {
//       permGranted = true;
//     }

//     if (permGranted) {
//       _deviceStream = _flutterReactiveBle.scanForDevices(
//         withServices: [],
//         scanMode: ScanMode.lowLatency,
//       ).where((event) => event.name != null && event.name.isNotEmpty);

//       _scanSubscription = _deviceStream.listen((device) {
//         print('Discovered device: ${device.name} (${device.id})');
//       });
//     }
//   }

//   void stopScan() {
//     if (_scanSubscription != null) {
//       _scanSubscription!.cancel();
//       _scanSubscription = null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Home Page",
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 await startScan();
//               },
//               child: const Text(
//                 "Start",
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 stopScan();
//               },
//               child: const Text(
//                 "Stop",
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
