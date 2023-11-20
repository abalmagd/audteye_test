// To parse this JSON data, do
//
//     final appointment = appointmentFromJson(jsonString);

import 'dart:convert';

Appointment appointmentFromJson(String str) => Appointment.fromJson(json.decode(str));

String appointmentToJson(Appointment data) => json.encode(data.toJson());

class Appointment {
  final int count;
  final dynamic next;
  final dynamic previous;
  final List<Result> results;

  Appointment({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  final int id;
  final Doctor doctor;
  final Patient patient;
  final dynamic problem;
  final dynamic diagnosedWith;
  final dynamic document;
  final DateTime date;
  final dynamic orderSummary;
  final double serviceAmount;
  final bool isCouponApplied;
  final bool isVip;
  final bool isRated;
  final int status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic prescriptions;

  Result({
    required this.id,
    required this.doctor,
    required this.patient,
    required this.problem,
    required this.diagnosedWith,
    required this.document,
    required this.date,
    required this.orderSummary,
    required this.serviceAmount,
    required this.isCouponApplied,
    required this.isVip,
    required this.isRated,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.prescriptions,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["id"],
    doctor: Doctor.fromJson(json["doctor"]),
    patient: Patient.fromJson(json["patient"]),
    problem: json["problem"],
    diagnosedWith: json["diagnosed_with"],
    document: json["document"],
    date: DateTime.parse(json["date"]),
    orderSummary: json["order_summary"],
    serviceAmount: json["service_amount"],
    isCouponApplied: json["is_coupon_applied"],
    isVip: json["is_vip"],
    isRated: json["is_rated"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    prescriptions: json["prescriptions"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "doctor": doctor.toJson(),
    "patient": patient.toJson(),
    "problem": problem,
    "diagnosed_with": diagnosedWith,
    "document": document,
    "date": date.toIso8601String(),
    "order_summary": orderSummary,
    "service_amount": serviceAmount,
    "is_coupon_applied": isCouponApplied,
    "is_vip": isVip,
    "is_rated": isRated,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "prescriptions": prescriptions,
  };
}

class Doctor {
  final int id;
  final DoctorUser user;
  final int status;
  final bool onVacation;
  final String designation;
  final String degrees;
  final String languagesSpoken;
  final int experienceYear;
  final int serviceAmount;
  final int vipServiceAmount;
  final String detail;
  final String educationalJourney;
  final int totalPatientsCured;
  final double totalEarnings;
  final Department department;
  final List<Slot> slot;

  Doctor({
    required this.id,
    required this.user,
    required this.status,
    required this.onVacation,
    required this.designation,
    required this.degrees,
    required this.languagesSpoken,
    required this.experienceYear,
    required this.serviceAmount,
    required this.vipServiceAmount,
    required this.detail,
    required this.educationalJourney,
    required this.totalPatientsCured,
    required this.totalEarnings,
    required this.department,
    required this.slot,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json["id"],
    user: DoctorUser.fromJson(json["user"]),
    status: json["status"],
    onVacation: json["on_vacation"],
    designation: json["designation"],
    degrees: json["degrees"],
    languagesSpoken: json["languages_spoken"],
    experienceYear: json["experience_year"],
    serviceAmount: json["service_amount"],
    vipServiceAmount: json["vip_service_amount"],
    detail: json["detail"],
    educationalJourney: json["educational_journey"],
    totalPatientsCured: json["total_patients_cured"],
    totalEarnings: json["total_earnings"],
    department: Department.fromJson(json["department"]),
    slot: List<Slot>.from(json["slot"].map((x) => Slot.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user.toJson(),
    "status": status,
    "on_vacation": onVacation,
    "designation": designation,
    "degrees": degrees,
    "languages_spoken": languagesSpoken,
    "experience_year": experienceYear,
    "service_amount": serviceAmount,
    "vip_service_amount": vipServiceAmount,
    "detail": detail,
    "educational_journey": educationalJourney,
    "total_patients_cured": totalPatientsCured,
    "total_earnings": totalEarnings,
    "department": department.toJson(),
    "slot": List<dynamic>.from(slot.map((x) => x.toJson())),
  };
}

class Department {
  final int id;
  final String name;
  final dynamic image;
  final bool isActive;
  final DateTime createdAt;

  Department({
    required this.id,
    required this.name,
    required this.image,
    required this.isActive,
    required this.createdAt,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    isActive: json["is_active"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "is_active": isActive,
    "created_at": createdAt.toIso8601String(),
  };
}

class Slot {
  final int id;
  final String time;
  final int weekday;
  final DateTime createdAt;
  final DateTime updatedAt;

  Slot({
    required this.id,
    required this.time,
    required this.weekday,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Slot.fromJson(Map<String, dynamic> json) => Slot(
    id: json["id"],
    time: json["time"],
    weekday: json["weekday"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "time": time,
    "weekday": weekday,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

class DoctorUser {
  final int id;
  final String name;
  final dynamic phoneNumber;
  final String email;
  final int gender;
  final dynamic identity;
  final int userType;
  final DateTime birthdate;
  final String country;
  final DateTime updatedAt;
  final List<int> languages;

  DoctorUser({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.gender,
    required this.identity,
    required this.userType,
    required this.birthdate,
    required this.country,
    required this.updatedAt,
    required this.languages,
  });

  factory DoctorUser.fromJson(Map<String, dynamic> json) => DoctorUser(
    id: json["id"],
    name: json["name"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    gender: json["gender"],
    identity: json["identity"],
    userType: json["user_type"],
    birthdate: DateTime.parse(json["birthdate"]),
    country: json["country"],
    updatedAt: DateTime.parse(json["updated_at"]),
    languages: List<int>.from(json["languages"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phone_number": phoneNumber,
    "email": email,
    "gender": gender,
    "identity": identity,
    "user_type": userType,
    "birthdate": "${birthdate.year.toString().padLeft(4, '0')}-${birthdate.month.toString().padLeft(2, '0')}-${birthdate.day.toString().padLeft(2, '0')}",
    "country": country,
    "updated_at": updatedAt.toIso8601String(),
    "languages": List<dynamic>.from(languages.map((x) => x)),
  };
}

class Patient {
  final int id;
  final PatientUser user;
  final List<Chronic> chronics;
  final List<dynamic> medicines;
  final List<SurgicalHistory> surgicalHistory;
  final List<dynamic> allergy;
  final List<SocialHistory> socialHistory;
  final List<dynamic> investigation;
  final String familyHistory;

  Patient({
    required this.id,
    required this.user,
    required this.chronics,
    required this.medicines,
    required this.surgicalHistory,
    required this.allergy,
    required this.socialHistory,
    required this.investigation,
    required this.familyHistory,
  });

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    id: json["id"],
    user: PatientUser.fromJson(json["user"]),
    chronics: List<Chronic>.from(json["chronics"].map((x) => Chronic.fromJson(x))),
    medicines: List<dynamic>.from(json["medicines"].map((x) => x)),
    surgicalHistory: List<SurgicalHistory>.from(json["surgical_history"].map((x) => SurgicalHistory.fromJson(x))),
    allergy: List<dynamic>.from(json["allergy"].map((x) => x)),
    socialHistory: List<SocialHistory>.from(json["social_history"].map((x) => SocialHistory.fromJson(x))),
    investigation: List<dynamic>.from(json["investigation"].map((x) => x)),
    familyHistory: json["family_history"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user": user.toJson(),
    "chronics": List<dynamic>.from(chronics.map((x) => x.toJson())),
    "medicines": List<dynamic>.from(medicines.map((x) => x)),
    "surgical_history": List<dynamic>.from(surgicalHistory.map((x) => x.toJson())),
    "allergy": List<dynamic>.from(allergy.map((x) => x)),
    "social_history": List<dynamic>.from(socialHistory.map((x) => x.toJson())),
    "investigation": List<dynamic>.from(investigation.map((x) => x)),
    "family_history": familyHistory,
  };
}

class Chronic {
  final int id;
  final String name;
  final String detail;

  Chronic({
    required this.id,
    required this.name,
    required this.detail,
  });

  factory Chronic.fromJson(Map<String, dynamic> json) => Chronic(
    id: json["id"],
    name: json["name"],
    detail: json["detail"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "detail": detail,
  };
}

class SocialHistory {
  final int id;
  final String detail;

  SocialHistory({
    required this.id,
    required this.detail,
  });

  factory SocialHistory.fromJson(Map<String, dynamic> json) => SocialHistory(
    id: json["id"],
    detail: json["detail"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "detail": detail,
  };
}

class SurgicalHistory {
  final int id;
  final String detail;
  final DateTime date;

  SurgicalHistory({
    required this.id,
    required this.detail,
    required this.date,
  });

  factory SurgicalHistory.fromJson(Map<String, dynamic> json) => SurgicalHistory(
    id: json["id"],
    detail: json["detail"],
    date: DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "detail": detail,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
  };
}

class PatientUser {
  final int id;
  final List<String> languages;
  final String name;
  final dynamic phoneNumber;
  final String email;
  final dynamic image;
  final int gender;
  final dynamic identity;
  final int userType;
  final DateTime birthdate;
  final bool isNotification;
  final dynamic country;
  final DateTime lastLogin;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;

  PatientUser({
    required this.id,
    required this.languages,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.image,
    required this.gender,
    required this.identity,
    required this.userType,
    required this.birthdate,
    required this.isNotification,
    required this.country,
    required this.lastLogin,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PatientUser.fromJson(Map<String, dynamic> json) => PatientUser(
    id: json["id"],
    languages: List<String>.from(json["languages"].map((x) => x)),
    name: json["name"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    image: json["image"],
    gender: json["gender"],
    identity: json["identity"],
    userType: json["user_type"],
    birthdate: DateTime.parse(json["birthdate"]),
    isNotification: json["is_notification"],
    country: json["country"],
    lastLogin: DateTime.parse(json["last_login"]),
    isActive: json["is_active"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "languages": List<dynamic>.from(languages.map((x) => x)),
    "name": name,
    "phone_number": phoneNumber,
    "email": email,
    "image": image,
    "gender": gender,
    "identity": identity,
    "user_type": userType,
    "birthdate": "${birthdate.year.toString().padLeft(4, '0')}-${birthdate.month.toString().padLeft(2, '0')}-${birthdate.day.toString().padLeft(2, '0')}",
    "is_notification": isNotification,
    "country": country,
    "last_login": lastLogin.toIso8601String(),
    "is_active": isActive,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
