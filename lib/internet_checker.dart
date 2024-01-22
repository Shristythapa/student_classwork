import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/config/constants/internet_check.dart';

class InternetChecker extends StatelessWidget {
  const InternetChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Consumer(builder: (context, ref, child) {
        final connectivityStatus = ref.watch(connectivityStatusProvider);

        if (connectivityStatus == ConnectivityStatus.isConnected) {
          return const Text(
            'Connected',
            style: TextStyle(fontSize: 24),
          );
        } else {
          return const Text(
            'Disconnected',
            style: TextStyle(fontSize: 24),
          );
        }
      })),
    );
  }
}
