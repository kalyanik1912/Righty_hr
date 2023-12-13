import 'package:meta/meta.dart';
import 'dart:convert';

List<InvoicesResponseBean> invoicesResponseBeanFromJson(String str) =>
    List<InvoicesResponseBean>.from(
        json.decode(str).map((x) => InvoicesResponseBean.fromJson(x)));

String invoicesResponseBeanToJson(List<InvoicesResponseBean> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InvoicesResponseBean {
  int id;
  int employeeId;
  int invoicenumber;
  String invoicedate;
  String invoiceType;
  double money;
  String attachment;
  String status;
  String employeeName;
  String isdeleted;
  String description;

  InvoicesResponseBean({
    required this.id,
    required this.employeeId,
    required this.invoicenumber,
    required this.invoicedate,
    required this.invoiceType,
    required this.money,
    required this.attachment,
    required this.status,
    required this.employeeName,
    required this.isdeleted,
    required this.description,
  });

  factory InvoicesResponseBean.fromJson(Map<String, dynamic> json) =>
      InvoicesResponseBean(
        id: json["id"] ?? 0,
        employeeId: json["employeeId"] ?? 0,
        invoicenumber: json["invoicenumber"] ?? 0,
        invoicedate: json["invoicedate"] ?? "",
        invoiceType: json["invoiceType"] ?? "",
        money: json["money"]?.toDouble() ?? 0.0,
        attachment: json["attachment"] ?? "",
        status: json["status"] ?? "",
        employeeName: json["employeeName"] ?? "",
        isdeleted: json["isdeleted"] ?? "",
        description: json["description"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employeeId": employeeId,
        "invoicenumber": invoicenumber,
        "invoicedate": invoicedate,
        "invoiceType": invoiceType,
        "money": money,
        "attachment": attachment,
        "status": status,
        "employeeName": employeeName,
        "isdeleted": isdeleted,
        "description": description,
      };
}
