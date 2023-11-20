import 'dart:convert';

import 'package:audteye_test/models/appointment.dart';
import 'package:audteye_test/riverpod/appointment_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appointmentProvider =
    StateNotifierProvider<AppointmentController, AppointmentState>((ref) {
  return AppointmentController(
  );
});

class AppointmentController extends StateNotifier<AppointmentState> {
  AppointmentController()
      : super(AppointmentState(appointment: const AsyncValue.loading()));

  Future<void> getData() async {
    const endpoint = 'https://dev.minaini.com:2053/r/appointments';
    const token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzAwNTY5MTI5LCJpYXQiOjE3MDA0ODI3MjksImp0aSI6ImNjYzZmYzllZTI2YTRhYTVhZjNkMjZkNTMyYjE1OGUyIiwidXNlcl9pZCI6Mn0.BlyQ9q-L_TsC6s5AUCZD3IgqETaNwgZafrXzF2EsGvQ';

    final dio = Dio();
    final response = await dio.get(
      endpoint,
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );

    state = state.copyWith(
        appointment: AsyncValue.data(appointmentFromJson(jsonEncode(response.data))));

    print(state.appointment);
  }
}
