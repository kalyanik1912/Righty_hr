import 'package:meta/meta.dart';
import 'dart:convert';

List<ExpensesResponseBean> expensesResponseBeanFromJson(String str) =>
    List<ExpensesResponseBean>.from(
        json.decode(str).map((x) => ExpensesResponseBean.fromJson(x)));

String expensesResponseBeanToJson(List<ExpensesResponseBean> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ExpensesResponseBean {
  int id;
  int employeeId;
  String expensedate;
  double amount;
  String attachment;
  String status;
  int expensesCode;
  String expenseType;
  String description;
  String isdeleted;

  ExpensesResponseBean({
    required this.id,
    required this.employeeId,
    required this.expensedate,
    required this.amount,
    required this.attachment,
    required this.status,
    required this.expensesCode,
    required this.expenseType,
    required this.description,
    required this.isdeleted,
  });

  factory ExpensesResponseBean.fromJson(Map<String, dynamic> json) =>
      ExpensesResponseBean(
        id: json["id"] ?? 0,
        employeeId: json["employeeId"] ?? 0,
        expensedate: json["expensedate"] ?? "",
        amount: json["amount"] ?? 0.0,
        attachment: json["attachment"] ?? "",
        status: json["status"] ?? "",
        expensesCode: json["expensesCode"] ?? 0,
        expenseType: json["expenseType"] ?? "",
        description: json["description"] ?? "",
        isdeleted: json["isdeleted"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employeeId": employeeId,
        "expensedate": expensedate,
        "amount": amount,
        "attachment": attachment,
        "status": status,
        "expensesCode": expensesCode,
        "expenseType": expenseType,
        "description": description,
        "isdeleted": isdeleted,
      };
}
