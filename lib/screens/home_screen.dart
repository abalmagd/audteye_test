import 'package:audteye_test/riverpod/appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final call = ref.read(appointmentProvider.notifier).getData();
    final watch = ref.watch(appointmentProvider).appointment;
    return Scaffold(
      appBar: AppBar(),
      body: watch.when(
        data: (appointments) {
          return ListView.builder(
            itemBuilder: (context, index) =>
                Text(appointments.results[index].doctor.user.name),
            itemCount: appointments.results.length,
          );
        },
        error: (_, __) {
          return const SizedBox.shrink();
        },
        loading: () {
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
