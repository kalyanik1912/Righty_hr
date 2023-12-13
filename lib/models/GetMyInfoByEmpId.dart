import 'dart:convert';

GetMyInfoByEmpId getMyInfoByEmpIdFromJson(String str) =>
    GetMyInfoByEmpId.fromJson(json.decode(str));

String getMyInfoByEmpIdToJson(GetMyInfoByEmpId data) =>
    json.encode(data.toJson());

class GetMyInfoByEmpId {
  String firstName;

  String lastName;

  String maritalStatus;

  String empstatus;

  String emailaddress;

  int supervisor;

  String gender;

  DateTime dob;

  dynamic createdby;

  dynamic updatedby;

  int contactnumber;

  String addressLine1;

  String addressLine2;

  String city;

  String state;

  int zipCode;

  String country;

  dynamic ssn;

  String taxFileNumber;

  dynamic emergencynumber;

  dynamic effectivedate;

  String location;

  dynamic comments;

  dynamic issuedDate;

  dynamic expirationdate;

  dynamic status;

  dynamic employementstatus;

  String title;

  String nationalId;

  String profilePic;

  String secondaryLanguage;

  dynamic addressId;

  int workPhone;

  int mobilePhone;

  String workEmail;

  String homeEmail;

  String notes;

  dynamic bankName;

  dynamic accountNumber;

  dynamic password;

  dynamic confirmPassword;

  dynamic ifscCode;

  dynamic proof;

  DateTime dateOfJoining;

  DateTime probationEndDate;

  String probationStatus;

  String noticePeriod;

  String backgroundCheckStatus;

  String emergencyName;

  String relationShip;

  String emailId;

  dynamic mobileNumber;

  dynamic termtypeoffboard;

  dynamic termreasonoffboard;

  dynamic eligibleforrehire;

  dynamic lastworkingday;

  String jobRole;

  dynamic img;

  String reportsto;

  bool isManager;

  dynamic gradeId;

  String workPhoneCountryCode;

  String mobilePhoneCountryCode;

  int employeeId;

  dynamic hrmsId;

  dynamic bankAccount;

  String emergencyCode;

  dynamic offerIssueddate;

  dynamic offerstatus;

  bool pf;

  bool esic;

  bool pt;

  bool issalaryhold;

  dynamic rejectionReason;

  bool insurance;

  dynamic permissions;

  GetMyInfoByEmpId({
    required this.firstName,
    required this.lastName,
    required this.maritalStatus,
    required this.empstatus,
    required this.emailaddress,
    required this.supervisor,
    required this.gender,
    required this.dob,
    required this.createdby,
    required this.updatedby,
    required this.contactnumber,
    required this.addressLine1,
    required this.addressLine2,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.country,
    required this.ssn,
    required this.taxFileNumber,
    required this.emergencynumber,
    required this.effectivedate,
    required this.location,
    required this.comments,
    required this.issuedDate,
    required this.expirationdate,
    required this.status,
    required this.employementstatus,
    required this.title,
    required this.nationalId,
    required this.profilePic,
    required this.secondaryLanguage,
    required this.addressId,
    required this.workPhone,
    required this.mobilePhone,
    required this.workEmail,
    required this.homeEmail,
    required this.notes,
    required this.bankName,
    required this.accountNumber,
    required this.password,
    required this.confirmPassword,
    required this.ifscCode,
    required this.proof,
    required this.dateOfJoining,
    required this.probationEndDate,
    required this.probationStatus,
    required this.noticePeriod,
    required this.backgroundCheckStatus,
    required this.emergencyName,
    required this.relationShip,
    required this.emailId,
    required this.mobileNumber,
    required this.termtypeoffboard,
    required this.termreasonoffboard,
    required this.eligibleforrehire,
    required this.lastworkingday,
    required this.jobRole,
    required this.img,
    required this.reportsto,
    required this.isManager,
    required this.gradeId,
    required this.workPhoneCountryCode,
    required this.mobilePhoneCountryCode,
    required this.employeeId,
    required this.hrmsId,
    required this.bankAccount,
    required this.emergencyCode,
    required this.offerIssueddate,
    required this.offerstatus,
    required this.pf,
    required this.esic,
    required this.pt,
    required this.issalaryhold,
    required this.rejectionReason,
    required this.insurance,
    required this.permissions,
  });

  factory GetMyInfoByEmpId.fromJson(Map<String, dynamic> json) =>
      GetMyInfoByEmpId(
        firstName: json["firstName"],
        lastName: json["lastName"],
        maritalStatus: json["maritalStatus"],
        empstatus: json["empstatus"],
        emailaddress: json["emailaddress"],
        supervisor: json["supervisor"],
        gender: json["gender"],
        dob: DateTime.parse(json["dob"]),
        createdby: json["createdby"],
        updatedby: json["updatedby"],
        contactnumber: json["contactnumber"],
        addressLine1: json["addressLine1"],
        addressLine2: json["addressLine2"],
        city: json["city"],
        state: json["state"],
        zipCode: json["zipCode"],
        country: json["country"],
        ssn: json["ssn"],
        taxFileNumber: json["taxFileNumber"],
        emergencynumber: json["emergencynumber"],
        effectivedate: json["effectivedate"],
        location: json["location"],
        comments: json["comments"],
        issuedDate: json["issuedDate"],
        expirationdate: json["expirationdate"],
        status: json["status"],
        employementstatus: json["employementstatus"],
        title: json["title"],
        nationalId: json["nationalId"],
        profilePic: json["profilePic"],
        secondaryLanguage: json["secondaryLanguage"],
        addressId: json["addressId"],
        workPhone: json["workPhone"],
        mobilePhone: json["mobilePhone"],
        workEmail: json["workEmail"],
        homeEmail: json["homeEmail"],
        notes: json["notes"],
        bankName: json["bankName"],
        accountNumber: json["accountNumber"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        ifscCode: json["ifscCode"],
        proof: json["proof"],
        dateOfJoining: DateTime.parse(json["dateOfJoining"]),
        probationEndDate: DateTime.parse(json["probationEndDate"]),
        probationStatus: json["probationStatus"],
        noticePeriod: json["noticePeriod"],
        backgroundCheckStatus: json["backgroundCheckStatus"],
        emergencyName: json["emergencyName"],
        relationShip: json["relationShip"],
        emailId: json["emailId"],
        mobileNumber: json["mobileNumber"],
        termtypeoffboard: json["termtypeoffboard"],
        termreasonoffboard: json["termreasonoffboard"],
        eligibleforrehire: json["eligibleforrehire"],
        lastworkingday: json["lastworkingday"],
        jobRole: json["jobRole"],
        img: json["img"],
        reportsto: json["reportsto"],
        isManager: json["isManager"],
        gradeId: json["gradeId"],
        workPhoneCountryCode: json["workPhoneCountryCode"],
        mobilePhoneCountryCode: json["mobilePhoneCountryCode"],
        employeeId: json["employeeId"],
        hrmsId: json["hrmsId"],
        bankAccount: json["bankAccount"],
        emergencyCode: json["emergencyCode"],
        offerIssueddate: json["offerIssueddate"],
        offerstatus: json["offerstatus"],
        pf: json["pf"],
        esic: json["esic"],
        pt: json["pt"],
        issalaryhold: json["issalaryhold"],
        rejectionReason: json["rejectionReason"],
        insurance: json["insurance"],
        permissions: json["permissions"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "maritalStatus": maritalStatus,
        "empstatus": empstatus,
        "emailaddress": emailaddress,
        "supervisor": supervisor,
        "gender": gender,
        "dob": dob.toIso8601String(),
        "createdby": createdby,
        "updatedby": updatedby,
        "contactnumber": contactnumber,
        "addressLine1": addressLine1,
        "addressLine2": addressLine2,
        "city": city,
        "state": state,
        "zipCode": zipCode,
        "country": country,
        "ssn": ssn,
        "taxFileNumber": taxFileNumber,
        "emergencynumber": emergencynumber,
        "effectivedate": effectivedate,
        "location": location,
        "comments": comments,
        "issuedDate": issuedDate,
        "expirationdate": expirationdate,
        "status": status,
        "employementstatus": employementstatus,
        "title": title,
        "nationalId": nationalId,
        "profilePic": profilePic,
        "secondaryLanguage": secondaryLanguage,
        "addressId": addressId,
        "workPhone": workPhone,
        "mobilePhone": mobilePhone,
        "workEmail": workEmail,
        "homeEmail": homeEmail,
        "notes": notes,
        "bankName": bankName,
        "accountNumber": accountNumber,
        "password": password,
        "confirmPassword": confirmPassword,
        "ifscCode": ifscCode,
        "proof": proof,
        "dateOfJoining": dateOfJoining.toIso8601String(),
        "probationEndDate":
            "${probationEndDate.year.toString().padLeft(4, '0')}-${probationEndDate.month.toString().padLeft(2, '0')}-${probationEndDate.day.toString().padLeft(2, '0')}",
        "probationStatus": probationStatus,
        "noticePeriod": noticePeriod,
        "backgroundCheckStatus": backgroundCheckStatus,
        "emergencyName": emergencyName,
        "relationShip": relationShip,
        "emailId": emailId,
        "mobileNumber": mobileNumber,
        "termtypeoffboard": termtypeoffboard,
        "termreasonoffboard": termreasonoffboard,
        "eligibleforrehire": eligibleforrehire,
        "lastworkingday": lastworkingday,
        "jobRole": jobRole,
        "img": img,
        "reportsto": reportsto,
        "isManager": isManager,
        "gradeId": gradeId,
        "workPhoneCountryCode": workPhoneCountryCode,
        "mobilePhoneCountryCode": mobilePhoneCountryCode,
        "employeeId": employeeId,
        "hrmsId": hrmsId,
        "bankAccount": bankAccount,
        "emergencyCode": emergencyCode,
        "offerIssueddate": offerIssueddate,
        "offerstatus": offerstatus,
        "pf": pf,
        "esic": esic,
        "pt": pt,
        "issalaryhold": issalaryhold,
        "rejectionReason": rejectionReason,
        "insurance": insurance,
        "permissions": permissions,
      };
}
