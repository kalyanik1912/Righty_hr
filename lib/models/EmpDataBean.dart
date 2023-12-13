import 'dart:convert';

EmpDataBean empDataBeanFromJson(String str) =>
    EmpDataBean.fromJson(json.decode(str));

String empDataBeanToJson(EmpDataBean data) => json.encode(data.toJson());

class EmpDataBean {
  List<String> roles;
  List<String> claims;
  Empdatum empdatum;

  EmpDataBean({
    required this.roles,
    required this.claims,
    required this.empdatum,
  });

  factory EmpDataBean.fromJson(Map<String, dynamic> json) => EmpDataBean(
        roles: List<String>.from(json["roles"].map((x) => x)),
        claims: List<String>.from(json["claims"].map((x) => x)),
        empdatum: Empdatum.fromJson(json["empdatum"] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        "roles": List<dynamic>.from(roles.map((x) => x)),
        "claims": List<dynamic>.from(claims.map((x) => x)),
        "empdatum": empdatum.toJson(),
      };
}

class Empdatum {
  String firstName;
  String lastName;
  String maritalStatus;
  String empstatus;
  String emailaddress;
  int supervisor;
  String gender;
  String dob;
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
  String dateOfJoining;
  String probationEndDate;
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
  bool insurance;
  // Assignments assignments;
  // BankDetails bankDetails;
  // CompensationData compensationdata;
  // List<dynamic> departments;
  // EducationData educationdata;
  // EmploymentTable employementTables;
  // List<dynamic> familyMembers;
  // List<dynamic> identityTables;
  // List<dynamic> jobinformations;
  // List<dynamic> roleUsers;
  // List<dynamic> subDepartments;
  // List<dynamic> visainformations;

  Empdatum({
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
    required this.insurance,
    // required this.assignments,
    // required this.bankDetails,
    // required this.compensationdata,
    // required this.departments,
    // required this.educationdata,
    // required this.employementTables,
    // required this.familyMembers,
    // required this.identityTables,
    // required this.jobinformations,
    // required this.roleUsers,
    // required this.subDepartments,
    // required this.visainformations,
  });

  factory Empdatum.fromJson(Map<String, dynamic> json) => Empdatum(
        firstName: json["firstName"] ?? "",
        lastName: json["lastName"] ?? "",
        maritalStatus: json["maritalStatus"] ?? "",
        empstatus: json["empstatus"] ?? "",
        emailaddress: json["emailaddress"] ?? "",
        supervisor: json["supervisor"] ?? 0,
        gender: json["gender"] ?? "",
        dob: json["dob"] ?? "",
        createdby: json["createdby"] ?? "",
        updatedby: json["updatedby"] ?? "",
        contactnumber: json["contactnumber"] ?? 0,
        addressLine1: json["addressLine1"] ?? "",
        addressLine2: json["addressLine2"] ?? "",
        city: json["city"] ?? "",
        state: json["state"] ?? "",
        zipCode: json["zipCode"] ?? 0,
        country: json["country"] ?? "",
        ssn: json["ssn"] ?? 0,
        taxFileNumber: json["taxFileNumber"] ?? "",
        emergencynumber: json["emergencynumber"] ?? 0.0,
        effectivedate: json["effectivedate"] ?? "",
        location: json["location"] ?? "",
        comments: json["comments"] ?? "",
        issuedDate: json["issuedDate"] ?? "",
        expirationdate: json["expirationdate"] ?? "",
        status: json["status"] ?? "",
        employementstatus: json["employementstatus"] ?? "",
        title: json["title"] ?? "",
        nationalId: json["nationalId"] ?? "",
        profilePic: json["profilePic"] ?? "",
        secondaryLanguage: json["secondaryLanguage"] ?? "",
        addressId: json["addressId"] ?? 0,
        workPhone: json["workPhone"] ?? 0,
        mobilePhone: json["mobilePhone"] ?? 0,
        workEmail: json["workEmail"] ?? "",
        homeEmail: json["homeEmail"] ?? "",
        notes: json["notes"] ?? "",
        bankName: json["bankName"] ?? "",
        accountNumber: json["accountNumber"] ?? 0.0,
        password: json["password"] ?? "",
        confirmPassword: json["confirmPassword"] ?? "",
        ifscCode: json["ifscCode"] ?? "",
        proof: json["proof"] ?? "",
        dateOfJoining: json["dateOfJoining"] ?? "",
        probationEndDate: json["probationEndDate"] ?? "",
        probationStatus: json["probationStatus"] ?? "",
        noticePeriod: json["noticePeriod"] ?? "",
        backgroundCheckStatus: json["backgroundCheckStatus"] ?? "",
        emergencyName: json["emergencyName"] ?? "",
        relationShip: json["relationShip"] ?? "",
        emailId: json["emailId"] ?? "",
        mobileNumber: json["mobileNumber"] ?? 0,
        termtypeoffboard: json["termtypeoffboard"] ?? "",
        termreasonoffboard: json["termreasonoffboard"] ?? "",
        eligibleforrehire: json["eligibleforrehire"] ?? "",
        lastworkingday: json["lastworkingday"] ?? "",
        jobRole: json["jobRole"] ?? "",
        img: json["img"] ?? "",
        reportsto: json["reportsto"] ?? "",
        isManager: json["isManager"] ?? false,
        gradeId: json["gradeId"] ?? 0,
        workPhoneCountryCode: json["workPhoneCountryCode"] ?? "",
        mobilePhoneCountryCode: json["mobilePhoneCountryCode"] ?? "",
        employeeId: json["employeeId"] ?? 0,
        hrmsId: json["hrmsId"] ?? "",
        bankAccount: json["bankAccount"] ?? "",
        emergencyCode: json["emergencyCode"] ?? "",
        offerIssueddate: json["offerIssueddate"] ?? "",
        offerstatus: json["offerstatus"] ?? "",
        pf: json["pf"] ?? false,
        esic: json["esic"] ?? false,
        pt: json["pt"] ?? false,
        issalaryhold: json["issalaryhold"] ?? false,
        insurance: json["insurance"] ?? false,
        // assignments: Assignments.fromJson(json["assignments"] ?? {}),
        // bankDetails: BankDetails.fromJson(json["bankDetails"] ?? {}),
        // compensationdata:
        //     CompensationData.fromJson(json["compensationdata"] ?? {}),
        // // departments: List<dynamic>.from(json["departments"].map((x) => x)),
        // educationdata: EducationData.fromJson(json["educationdata"] ?? {}),
        // employementTables:
        //     EmploymentTable.fromJson(json["employementTables"] ?? {}),
        // familyMembers: List<dynamic>.from(json["familyMembers"] ?? {}),
        // identityTables: List<dynamic>.from(json["identityTables"] ?? {}),
        // jobinformations: List<dynamic>.from(json["jobinformations"] ?? {}),
        // roleUsers: List<dynamic>.from(json["roleUsers"] ?? {}),
        // subDepartments: List<dynamic>.from(json["subDepartments"] ?? {}),
        // visainformations: List<dynamic>.from(json["visainformations"] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "maritalStatus": maritalStatus,
        "empstatus": empstatus,
        "emailaddress": emailaddress,
        "supervisor": supervisor,
        "gender": gender,
        "dob": dob,
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
        "dateOfJoining": dateOfJoining,
        "probationEndDate": probationEndDate,
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
        "insurance": insurance,
        // "assignments": assignments.toJson(),
        // "bankDetails": bankDetails.toJson(),
        // "compensationdata": compensationdata.toJson(),
        // // "departments": List<dynamic>.from(departments.map((x) => x)),
        // "educationdata": educationdata.toJson(),
        // "employementTables": employementTables.toJson(),
        // "familyMembers": List<dynamic>.from(familyMembers.map((x) => x)),
        // "identityTables": List<dynamic>.from(identityTables.map((x) => x)),
        // "jobinformations": List<dynamic>.from(jobinformations.map((x) => x)),
        // "roleUsers": List<dynamic>.from(roleUsers.map((x) => x)),
        // "subDepartments": List<dynamic>.from(subDepartments.map((x) => x)),
        // "visainformations": List<dynamic>.from(visainformations.map((x) => x)),
      };
}

class Assignments {
  Assignments({
    required this.assignmentId,
    required this.prid,
    required this.empId,
    required this.startDate,
    required this.endDate,
    required this.createdat,
    required this.isdeleted,
    required this.updatedat,
    required this.projectId,
    required this.status,
    required this.savedStatus,
  });

  int assignmentId;
  int prid;
  int empId;
  String startDate;
  String endDate;
  String createdat;
  bool isdeleted;
  String updatedat;
  int projectId;
  String status;
  String savedStatus;
  factory Assignments.fromJson(Map<String, dynamic> json) => Assignments(
        assignmentId: json["assignmentId"] ?? 0,
        prid: json["prid"] ?? 0,
        empId: json["empId"] ?? 0,
        startDate: json["startDate"] ?? "",
        endDate: json["endDate"] ?? "",
        createdat: json["createdat"] ?? "",
        isdeleted: json["isdeleted"] ?? false,
        updatedat: json["updatedat"] ?? "",
        projectId: json["projectId"] ?? 0,
        status: json["status"] ?? "",
        savedStatus: json["savedStatus"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "assignmentId": assignmentId,
        "prid": prid,
        "empId": empId,
        "startDate": startDate,
        "endDate": endDate,
        "createdat": createdat,
        "isdeleted": isdeleted,
        "updatedat": updatedat,
        "projectId": projectId,
        "status": status,
        "savedStatus": savedStatus,
      };
}

class BankDetails {
  int bankId;
  int empId;
  int accountNo;
  String accountName;
  String bankName;
  String ifscCode;
  String docUrl;
  bool isDeleted;
  bool isPrimary;

  BankDetails({
    required this.bankId,
    required this.empId,
    required this.accountNo,
    required this.accountName,
    required this.bankName,
    required this.ifscCode,
    required this.docUrl,
    required this.isDeleted,
    required this.isPrimary,
  });

  factory BankDetails.fromJson(Map<String, dynamic> json) => BankDetails(
        bankId: json["bankId"] ?? 0,
        empId: json["empId"] ?? 0,
        accountNo: json["accountNo"] ?? 0,
        accountName: json["accountName"] ?? "",
        bankName: json["bankName"] ?? "",
        ifscCode: json["ifscCode"] ?? "",
        docUrl: json["docUrl"] ?? "",
        isDeleted: json["isDeleted"] ?? false,
        isPrimary: json["isPrimary"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "bankId": bankId,
        "empId": empId,
        "accountNo": accountNo,
        "accountName": accountName,
        "bankName": bankName,
        "ifscCode": ifscCode,
        "docUrl": docUrl,
        "isDeleted": isDeleted,
        "isPrimary": isPrimary,
      };
}

class CompensationData {
  int employeeId;
  int id;
  String compeffectivedate;
  String overtimeeligibility;
  String reason;
  String compensationcomments;
  String frequency;
  String paytype;
  double compensationamount;
  String status;

  CompensationData({
    required this.employeeId,
    required this.id,
    required this.compeffectivedate,
    required this.overtimeeligibility,
    required this.reason,
    required this.compensationcomments,
    required this.frequency,
    required this.paytype,
    required this.compensationamount,
    required this.status,
  });

  factory CompensationData.fromJson(Map<String, dynamic> json) {
    return CompensationData(
      employeeId: json["employeeId"] ?? 0,
      id: json["id"] ?? 0,
      compeffectivedate: json["compeffectivedate"] ?? "",
      overtimeeligibility: json["overtimeeligibility"] ?? "",
      reason: json["reason"] ?? "",
      compensationcomments: json["compensationcomments"] ?? "",
      frequency: json["frequency"] ?? "",
      paytype: json["paytype"] ?? "",
      compensationamount: json["compensationamount"] ?? 0.0,
      status: json["status"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "employeeId": employeeId,
      "id": id,
      "compeffectivedate": compeffectivedate,
      "overtimeeligibility": overtimeeligibility,
      "reason": reason,
      "compensationcomments": compensationcomments,
      "frequency": frequency,
      "paytype": paytype,
      "compensationamount": compensationamount,
      "status": status,
    };
  }
}

class EducationData {
  int id;
  int employeeId;
  String degree;
  String university;
  String specialization;
  double gpa;
  String degreeStartDate;
  String degreeEndDate;
  String status;

  EducationData({
    required this.id,
    required this.employeeId,
    required this.degree,
    required this.university,
    required this.specialization,
    required this.gpa,
    required this.degreeStartDate,
    required this.degreeEndDate,
    required this.status,
  });

  factory EducationData.fromJson(Map<String, dynamic> json) => EducationData(
        id: json["id"] ?? 0,
        employeeId: json["employeeId"] ?? 0,
        degree: json["degree"] ?? "",
        university: json["university"] ?? "",
        specialization: json["specialization"] ?? "",
        gpa: json["gpa"] ?? 0.0,
        degreeStartDate: json["degreeStartDate"] ?? "",
        degreeEndDate: json["degreeEndDate"] ?? "",
        status: json["status"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employeeId": employeeId,
        "degree": degree,
        "university": university,
        "specialization": specialization,
        "gpa": gpa,
        "degreeStartDate": degreeStartDate,
        "degreeEndDate": degreeEndDate,
        "status": status,
      };
}

class EmploymentTable {
  int id;
  int empid;
  String jobType;
  String empEffectiveDate;
  String empComments;
  int gradeId;
  String createdat;
  String updatedat;
  String isdeleted;

  EmploymentTable({
    required this.id,
    required this.empid,
    required this.jobType,
    required this.empEffectiveDate,
    required this.empComments,
    required this.gradeId,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
  });

  factory EmploymentTable.fromJson(Map<String, dynamic> json) =>
      EmploymentTable(
        id: json["id"] ?? 0,
        empid: json["empid"] ?? 0,
        jobType: json["jobType"] ?? "",
        empEffectiveDate: json["empEffectiveDate"] ?? "",
        empComments: json["empComments"] ?? "",
        gradeId: json["gradeId"] ?? 0,
        createdat: json["createdat"] ?? "",
        updatedat: json["updatedat"] ?? "",
        isdeleted: json["isdeleted"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "empid": empid,
        "jobType": jobType,
        "empEffectiveDate": empEffectiveDate,
        "empComments": empComments,
        "gradeId": gradeId,
        "createdat": createdat,
        "updatedat": updatedat,
        "isdeleted": isdeleted,
      };
}
