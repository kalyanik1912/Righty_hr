import 'package:meta/meta.dart';
import 'dart:convert';

List<GetActiveEmpData> getActiveEmpDataFromJson(String str) =>
    List<GetActiveEmpData>.from(
        json.decode(str).map((x) => GetActiveEmpData.fromJson(x)));

String getActiveEmpDataToJson(List<GetActiveEmpData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetActiveEmpData {
  String firstName;
  String lastName;
  String reportsto;
  int employeeId;
  String workEmail;
  int supervisor;
  String empstatus;
  dynamic jobRole;
  int workPhone;
  String profilePic;

  GetActiveEmpData({
    required this.firstName,
    required this.lastName,
    required this.reportsto,
    required this.employeeId,
    required this.workEmail,
    required this.supervisor,
    required this.empstatus,
    required this.jobRole,
    required this.workPhone,
    required this.profilePic,
  });

  factory GetActiveEmpData.fromJson(Map<String, dynamic> json) =>
      GetActiveEmpData(
        firstName: json["firstName"] ?? "",
        lastName: json["lastName"] ?? "",
        reportsto: json["reportsto"] ?? "",
        employeeId: json["employeeId"] ?? 0,
        workEmail: json["workEmail"] ?? "",
        supervisor: json["supervisor"] ?? 0,
        empstatus: json["empstatus"] ?? "",
        jobRole: json["jobRole"] ?? "",
        workPhone: json["workPhone"] ?? 0,
        profilePic: json["profilePic"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "reportsto": reportsto,
        "employeeId": employeeId,
        "workEmail": workEmail,
        "supervisor": supervisor,
        "empstatus": empstatus,
        "jobRole": jobRole,
        "workPhone": workPhone,
        "profilePic": profilePic,
      };
}
