import 'package:audteye_test/models/appointment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppointmentState {
  final AsyncValue<Appointment> appointment;

  AppointmentState({
    required this.appointment,
  });

  AppointmentState copyWith({
    AsyncValue<Appointment>? appointment,
  }) {
    return AppointmentState(
      appointment: appointment ?? this.appointment,
    );
  }
}
