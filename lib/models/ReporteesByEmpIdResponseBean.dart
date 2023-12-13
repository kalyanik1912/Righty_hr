import 'dart:convert';

ReporteesByEmpIdResponseBean reporteesByEmpIdResponseBeanFromJson(String str) => ReporteesByEmpIdResponseBean.fromJson(json.decode(str));

String reporteesByEmpIdResponseBeanToJson(ReporteesByEmpIdResponseBean data) => json.encode(data.toJson());

class ReporteesByEmpIdResponseBean {
  String firstName;
  String lastName;
  String maritalStatus;
  String empstatus;
  String emailaddress;
  int supervisor;
  String gender;
  DateTime dob;
  String createdby;
  String updatedby;
  int contactnumber;
  String addressLine1;
  String addressLine2;
  String city;
  String state;
  int zipCode;
  String country;
  int ssn;
  String taxFileNumber;
  int emergencynumber;
  DateTime effectivedate;
  String location;
  String comments;
  DateTime issuedDate;
  DateTime expirationdate;
  String status;
  String employementstatus;
  String title;
  String nationalId;
  String profilePic;
  String secondaryLanguage;
  int addressId;
  int workPhone;
  int mobilePhone;
  String workEmail;
  String homeEmail;
  String notes;
  String bankName;
  int accountNumber;
  String password;
  String confirmPassword;
  String ifscCode;
  String proof;
  DateTime dateOfJoining;
  String probationEndDate;
  String probationStatus;
  String noticePeriod;
  String backgroundCheckStatus;
  String emergencyName;
  String relationShip;
  String emailId;
  int mobileNumber;
  String termtypeoffboard;
  String termreasonoffboard;
  String eligibleforrehire;
  DateTime lastworkingday;
  String jobRole;
  String img;
  String reportsto;
  bool isManager;
  int gradeId;
  String workPhoneCountryCode;
  String mobilePhoneCountryCode;
  int employeeId;
  String hrmsId;
  String bankAccount;
  String emergencyCode;
  DateTime offerIssueddate;
  String offerstatus;
  bool pf;
  bool esic;
  bool pt;
  bool issalaryhold;
  bool insurance;
  List<AppointmentLetterTable> appointmentLetterTables;
  List<AssetTable> assetTables;
  List<Assignment> assignments;
  List<BankDetail> bankDetails;
  List<Compensationdatum> compensationdata;
  List<CustomEvent> customEvents;
  List<Department> departments;
  List<Educationdatum> educationdata;
  List<EmployementTable> employementTables;
  List<FamilyMember> familyMembers;
  List<IdentityTable> identityTables;
  List<Invoice> invoices;
  List<Jobinformation> jobinformations;
  List<KudosTable> kudosTables;
  List<LeaveBalanceTable> leaveBalanceTables;
  List<Myexpense> myexpenses;
  List<OfferLetterTable> offerLetterTableApprovedByNavigations;
  List<OfferLetterTable> offerLetterTableApproverNavigations;
  List<OfferLetterTable> offerLetterTableEmps;
  List<OfferLetterTable> offerLetterTableOfferSentByNavigations;
  List<PayRollExpense> payRollExpenses;
  List<RoleUser> roleUsers;
  List<Sub> subDepartments;
  List<Team> teams;
  List<TicketTable> ticketTableAssignees;
  List<TicketTable> ticketTableEmps;
  List<Timeoff> timeoffs;
  List<TimesheetTable> timesheetTables;
  List<Visainformation> visainformations;

  ReporteesByEmpIdResponseBean({
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
    required this.appointmentLetterTables,
    required this.assetTables,
    required this.assignments,
    required this.bankDetails,
    required this.compensationdata,
    required this.customEvents,
    required this.departments,
    required this.educationdata,
    required this.employementTables,
    required this.familyMembers,
    required this.identityTables,
    required this.invoices,
    required this.jobinformations,
    required this.kudosTables,
    required this.leaveBalanceTables,
    required this.myexpenses,
    required this.offerLetterTableApprovedByNavigations,
    required this.offerLetterTableApproverNavigations,
    required this.offerLetterTableEmps,
    required this.offerLetterTableOfferSentByNavigations,
    required this.payRollExpenses,
    required this.roleUsers,
    required this.subDepartments,
    required this.teams,
    required this.ticketTableAssignees,
    required this.ticketTableEmps,
    required this.timeoffs,
    required this.timesheetTables,
    required this.visainformations,
  });

  factory ReporteesByEmpIdResponseBean.fromJson(Map<String, dynamic> json) => ReporteesByEmpIdResponseBean(
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
    effectivedate: DateTime.parse(json["effectivedate"]),
    location: json["location"],
    comments: json["comments"],
    issuedDate: DateTime.parse(json["issuedDate"]),
    expirationdate: DateTime.parse(json["expirationdate"]),
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
    probationEndDate: json["probationEndDate"],
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
    lastworkingday: DateTime.parse(json["lastworkingday"]),
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
    offerIssueddate: DateTime.parse(json["offerIssueddate"]),
    offerstatus: json["offerstatus"],
    pf: json["pf"],
    esic: json["esic"],
    pt: json["pt"],
    issalaryhold: json["issalaryhold"],
    insurance: json["insurance"],
    appointmentLetterTables: List<AppointmentLetterTable>.from(json["appointmentLetterTables"].map((x) => AppointmentLetterTable.fromJson(x))),
    assetTables: List<AssetTable>.from(json["assetTables"].map((x) => AssetTable.fromJson(x))),
    assignments: List<Assignment>.from(json["assignments"].map((x) => Assignment.fromJson(x))),
    bankDetails: List<BankDetail>.from(json["bankDetails"].map((x) => BankDetail.fromJson(x))),
    compensationdata: List<Compensationdatum>.from(json["compensationdata"].map((x) => Compensationdatum.fromJson(x))),
    customEvents: List<CustomEvent>.from(json["customEvents"].map((x) => CustomEvent.fromJson(x))),
    departments: List<Department>.from(json["departments"].map((x) => Department.fromJson(x))),
    educationdata: List<Educationdatum>.from(json["educationdata"].map((x) => Educationdatum.fromJson(x))),
    employementTables: List<EmployementTable>.from(json["employementTables"].map((x) => EmployementTable.fromJson(x))),
    familyMembers: List<FamilyMember>.from(json["familyMembers"].map((x) => FamilyMember.fromJson(x))),
    identityTables: List<IdentityTable>.from(json["identityTables"].map((x) => IdentityTable.fromJson(x))),
    invoices: List<Invoice>.from(json["invoices"].map((x) => Invoice.fromJson(x))),
    jobinformations: List<Jobinformation>.from(json["jobinformations"].map((x) => Jobinformation.fromJson(x))),
    kudosTables: List<KudosTable>.from(json["kudosTables"].map((x) => KudosTable.fromJson(x))),
    leaveBalanceTables: List<LeaveBalanceTable>.from(json["leaveBalanceTables"].map((x) => LeaveBalanceTable.fromJson(x))),
    myexpenses: List<Myexpense>.from(json["myexpenses"].map((x) => Myexpense.fromJson(x))),
    offerLetterTableApprovedByNavigations: List<OfferLetterTable>.from(json["offerLetterTableApprovedByNavigations"].map((x) => OfferLetterTable.fromJson(x))),
    offerLetterTableApproverNavigations: List<OfferLetterTable>.from(json["offerLetterTableApproverNavigations"].map((x) => OfferLetterTable.fromJson(x))),
    offerLetterTableEmps: List<OfferLetterTable>.from(json["offerLetterTableEmps"].map((x) => OfferLetterTable.fromJson(x))),
    offerLetterTableOfferSentByNavigations: List<OfferLetterTable>.from(json["offerLetterTableOfferSentByNavigations"].map((x) => OfferLetterTable.fromJson(x))),
    payRollExpenses: List<PayRollExpense>.from(json["payRollExpenses"].map((x) => PayRollExpense.fromJson(x))),
    roleUsers: List<RoleUser>.from(json["roleUsers"].map((x) => RoleUser.fromJson(x))),
    subDepartments: List<Sub>.from(json["subDepartments"].map((x) => Sub.fromJson(x))),
    teams: List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
    ticketTableAssignees: List<TicketTable>.from(json["ticketTableAssignees"].map((x) => TicketTable.fromJson(x))),
    ticketTableEmps: List<TicketTable>.from(json["ticketTableEmps"].map((x) => TicketTable.fromJson(x))),
    timeoffs: List<Timeoff>.from(json["timeoffs"].map((x) => Timeoff.fromJson(x))),
    timesheetTables: List<TimesheetTable>.from(json["timesheetTables"].map((x) => TimesheetTable.fromJson(x))),
    visainformations: List<Visainformation>.from(json["visainformations"].map((x) => Visainformation.fromJson(x))),
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
    "effectivedate": effectivedate.toIso8601String(),
    "location": location,
    "comments": comments,
    "issuedDate": issuedDate.toIso8601String(),
    "expirationdate": expirationdate.toIso8601String(),
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
    "lastworkingday": lastworkingday.toIso8601String(),
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
    "offerIssueddate": offerIssueddate.toIso8601String(),
    "offerstatus": offerstatus,
    "pf": pf,
    "esic": esic,
    "pt": pt,
    "issalaryhold": issalaryhold,
    "insurance": insurance,
    "appointmentLetterTables": List<dynamic>.from(appointmentLetterTables.map((x) => x.toJson())),
    "assetTables": List<dynamic>.from(assetTables.map((x) => x.toJson())),
    "assignments": List<dynamic>.from(assignments.map((x) => x.toJson())),
    "bankDetails": List<dynamic>.from(bankDetails.map((x) => x.toJson())),
    "compensationdata": List<dynamic>.from(compensationdata.map((x) => x.toJson())),
    "customEvents": List<dynamic>.from(customEvents.map((x) => x.toJson())),
    "departments": List<dynamic>.from(departments.map((x) => x.toJson())),
    "educationdata": List<dynamic>.from(educationdata.map((x) => x.toJson())),
    "employementTables": List<dynamic>.from(employementTables.map((x) => x.toJson())),
    "familyMembers": List<dynamic>.from(familyMembers.map((x) => x.toJson())),
    "identityTables": List<dynamic>.from(identityTables.map((x) => x.toJson())),
    "invoices": List<dynamic>.from(invoices.map((x) => x.toJson())),
    "jobinformations": List<dynamic>.from(jobinformations.map((x) => x.toJson())),
    "kudosTables": List<dynamic>.from(kudosTables.map((x) => x.toJson())),
    "leaveBalanceTables": List<dynamic>.from(leaveBalanceTables.map((x) => x.toJson())),
    "myexpenses": List<dynamic>.from(myexpenses.map((x) => x.toJson())),
    "offerLetterTableApprovedByNavigations": List<dynamic>.from(offerLetterTableApprovedByNavigations.map((x) => x.toJson())),
    "offerLetterTableApproverNavigations": List<dynamic>.from(offerLetterTableApproverNavigations.map((x) => x.toJson())),
    "offerLetterTableEmps": List<dynamic>.from(offerLetterTableEmps.map((x) => x.toJson())),
    "offerLetterTableOfferSentByNavigations": List<dynamic>.from(offerLetterTableOfferSentByNavigations.map((x) => x.toJson())),
    "payRollExpenses": List<dynamic>.from(payRollExpenses.map((x) => x.toJson())),
    "roleUsers": List<dynamic>.from(roleUsers.map((x) => x.toJson())),
    "subDepartments": List<dynamic>.from(subDepartments.map((x) => x.toJson())),
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
    "ticketTableAssignees": List<dynamic>.from(ticketTableAssignees.map((x) => x.toJson())),
    "ticketTableEmps": List<dynamic>.from(ticketTableEmps.map((x) => x.toJson())),
    "timeoffs": List<dynamic>.from(timeoffs.map((x) => x.toJson())),
    "timesheetTables": List<dynamic>.from(timesheetTables.map((x) => x.toJson())),
    "visainformations": List<dynamic>.from(visainformations.map((x) => x.toJson())),
  };
}

class AppointmentLetterTable {
  int id;
  int empid;
  DateTime appointmentSendDate;
  String appointmentSentStatus;
  String appointmentSentBy;
  String documentUrl;
  bool isdeleted;

  AppointmentLetterTable({
    required this.id,
    required this.empid,
    required this.appointmentSendDate,
    required this.appointmentSentStatus,
    required this.appointmentSentBy,
    required this.documentUrl,
    required this.isdeleted,
  });

  factory AppointmentLetterTable.fromJson(Map<String, dynamic> json) => AppointmentLetterTable(
    id: json["id"],
    empid: json["empid"],
    appointmentSendDate: DateTime.parse(json["appointmentSendDate"]),
    appointmentSentStatus: json["appointmentSentStatus"],
    appointmentSentBy: json["appointmentSentBy"],
    documentUrl: json["documentUrl"],
    isdeleted: json["isdeleted"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "empid": empid,
    "appointmentSendDate": appointmentSendDate.toIso8601String(),
    "appointmentSentStatus": appointmentSentStatus,
    "appointmentSentBy": appointmentSentBy,
    "documentUrl": documentUrl,
    "isdeleted": isdeleted,
  };
}

class AssetTable {
  int id;
  int empid;
  String assetType;
  String maker;
  String model;
  String serialNumber;
  DateTime assetissuedDtae;
  DateTime assetReturnDate;
  bool isDeleted;

  AssetTable({
    required this.id,
    required this.empid,
    required this.assetType,
    required this.maker,
    required this.model,
    required this.serialNumber,
    required this.assetissuedDtae,
    required this.assetReturnDate,
    required this.isDeleted,
  });

  factory AssetTable.fromJson(Map<String, dynamic> json) => AssetTable(
    id: json["id"],
    empid: json["empid"],
    assetType: json["assetType"],
    maker: json["maker"],
    model: json["model"],
    serialNumber: json["serialNumber"],
    assetissuedDtae: DateTime.parse(json["assetissuedDtae"]),
    assetReturnDate: DateTime.parse(json["assetReturnDate"]),
    isDeleted: json["isDeleted"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "empid": empid,
    "assetType": assetType,
    "maker": maker,
    "model": model,
    "serialNumber": serialNumber,
    "assetissuedDtae": assetissuedDtae.toIso8601String(),
    "assetReturnDate": assetReturnDate.toIso8601String(),
    "isDeleted": isDeleted,
  };
}

class Assignment {
  int assignmentId;
  int prid;
  int empId;
  DateTime startDate;
  DateTime endDate;
  DateTime createdat;
  bool isdeleted;
  DateTime updatedat;
  int projectId;
  String status;
  String savedStatus;

  Assignment({
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

  factory Assignment.fromJson(Map<String, dynamic> json) => Assignment(
    assignmentId: json["assignmentId"],
    prid: json["prid"],
    empId: json["empId"],
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    createdat: DateTime.parse(json["createdat"]),
    isdeleted: json["isdeleted"],
    updatedat: DateTime.parse(json["updatedat"]),
    projectId: json["projectId"],
    status: json["status"],
    savedStatus: json["savedStatus"],
  );

  Map<String, dynamic> toJson() => {
    "assignmentId": assignmentId,
    "prid": prid,
    "empId": empId,
    "startDate": startDate.toIso8601String(),
    "endDate": endDate.toIso8601String(),
    "createdat": createdat.toIso8601String(),
    "isdeleted": isdeleted,
    "updatedat": updatedat.toIso8601String(),
    "projectId": projectId,
    "status": status,
    "savedStatus": savedStatus,
  };
}

class BankDetail {
  int bankId;
  int empId;
  int accountNo;
  String accountName;
  String ifscCode;
  String docUrl;
  bool isDeleted;
  bool isPrimary;
  String bankName;

  BankDetail({
    required this.bankId,
    required this.empId,
    required this.accountNo,
    required this.accountName,
    required this.ifscCode,
    required this.docUrl,
    required this.isDeleted,
    required this.isPrimary,
    required this.bankName,
  });

  factory BankDetail.fromJson(Map<String, dynamic> json) => BankDetail(
    bankId: json["bankId"],
    empId: json["empId"],
    accountNo: json["accountNo"],
    accountName: json["accountName"],
    ifscCode: json["ifscCode"],
    docUrl: json["docUrl"],
    isDeleted: json["isDeleted"],
    isPrimary: json["isPrimary"],
    bankName: json["bankName"],
  );

  Map<String, dynamic> toJson() => {
    "bankId": bankId,
    "empId": empId,
    "accountNo": accountNo,
    "accountName": accountName,
    "ifscCode": ifscCode,
    "docUrl": docUrl,
    "isDeleted": isDeleted,
    "isPrimary": isPrimary,
    "bankName": bankName,
  };
}

class Compensationdatum {
  int employeeId;
  int id;
  DateTime compeffectivedate;
  String overtimeeligibility;
  String reason;
  String compensationcomments;
  String frequency;
  String paytype;
  int compensationamount;
  String status;

  Compensationdatum({
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

  factory Compensationdatum.fromJson(Map<String, dynamic> json) => Compensationdatum(
    employeeId: json["employeeId"],
    id: json["id"],
    compeffectivedate: DateTime.parse(json["compeffectivedate"]),
    overtimeeligibility: json["overtimeeligibility"],
    reason: json["reason"],
    compensationcomments: json["compensationcomments"],
    frequency: json["frequency"],
    paytype: json["paytype"],
    compensationamount: json["compensationamount"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "employeeId": employeeId,
    "id": id,
    "compeffectivedate": compeffectivedate.toIso8601String(),
    "overtimeeligibility": overtimeeligibility,
    "reason": reason,
    "compensationcomments": compensationcomments,
    "frequency": frequency,
    "paytype": paytype,
    "compensationamount": compensationamount,
    "status": status,
  };
}

class CustomEvent {
  int eventId;
  DateTime eventDate;
  String eventMessage;
  int empId;
  bool isDeleted;
  String eventTitle;
  String attachmentUrl;

  CustomEvent({
    required this.eventId,
    required this.eventDate,
    required this.eventMessage,
    required this.empId,
    required this.isDeleted,
    required this.eventTitle,
    required this.attachmentUrl,
  });

  factory CustomEvent.fromJson(Map<String, dynamic> json) => CustomEvent(
    eventId: json["eventId"],
    eventDate: DateTime.parse(json["eventDate"]),
    eventMessage: json["eventMessage"],
    empId: json["empId"],
    isDeleted: json["isDeleted"],
    eventTitle: json["eventTitle"],
    attachmentUrl: json["attachmentUrl"],
  );

  Map<String, dynamic> toJson() => {
    "eventId": eventId,
    "eventDate": eventDate.toIso8601String(),
    "eventMessage": eventMessage,
    "empId": empId,
    "isDeleted": isDeleted,
    "eventTitle": eventTitle,
    "attachmentUrl": attachmentUrl,
  };
}

class Department {
  int sno;
  String departmentName;
  String isdeleted;
  int employeeId;
  int deptManagerId;
  DateTime createdat;
  DateTime updatedat;
  List<Sub> subDepartments;

  Department({
    required this.sno,
    required this.departmentName,
    required this.isdeleted,
    required this.employeeId,
    required this.deptManagerId,
    required this.createdat,
    required this.updatedat,
    required this.subDepartments,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
    sno: json["sno"],
    departmentName: json["departmentName"],
    isdeleted: json["isdeleted"],
    employeeId: json["employeeId"],
    deptManagerId: json["deptManagerId"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    subDepartments: List<Sub>.from(json["subDepartments"].map((x) => Sub.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sno": sno,
    "departmentName": departmentName,
    "isdeleted": isdeleted,
    "employeeId": employeeId,
    "deptManagerId": deptManagerId,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "subDepartments": List<dynamic>.from(subDepartments.map((x) => x.toJson())),
  };
}

class Sub {
  int subdepartmentId;
  String subdepartmentName;
  int departmentId;
  bool isDeleted;
  int subDeptManagerId;
  DateTime createdat;
  DateTime updatedat;
  List<dynamic> jobinformations;
  List<Team> teams;
  List<TicketTable> ticketTables;

  Sub({
    required this.subdepartmentId,
    required this.subdepartmentName,
    required this.departmentId,
    required this.isDeleted,
    required this.subDeptManagerId,
    required this.createdat,
    required this.updatedat,
    required this.jobinformations,
    required this.teams,
    required this.ticketTables,
  });

  factory Sub.fromJson(Map<String, dynamic> json) => Sub(
    subdepartmentId: json["subdepartmentId"],
    subdepartmentName: json["subdepartmentName"],
    departmentId: json["departmentId"],
    isDeleted: json["isDeleted"],
    subDeptManagerId: json["subDeptManagerId"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    jobinformations: List<dynamic>.from(json["jobinformations"].map((x) => x)),
    teams: List<Team>.from(json["teams"].map((x) => Team.fromJson(x))),
    ticketTables: List<TicketTable>.from(json["ticketTables"].map((x) => TicketTable.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "subdepartmentId": subdepartmentId,
    "subdepartmentName": subdepartmentName,
    "departmentId": departmentId,
    "isDeleted": isDeleted,
    "subDeptManagerId": subDeptManagerId,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "jobinformations": List<dynamic>.from(jobinformations.map((x) => x)),
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
    "ticketTables": List<dynamic>.from(ticketTables.map((x) => x.toJson())),
  };
}

class Team {
  int teamId;
  int subDepartmentId;
  String teamName;
  int teamManagerId;
  DateTime createdat;
  DateTime updatedat;
  bool isDeleted;

  Team({
    required this.teamId,
    required this.subDepartmentId,
    required this.teamName,
    required this.teamManagerId,
    required this.createdat,
    required this.updatedat,
    required this.isDeleted,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    teamId: json["teamId"],
    subDepartmentId: json["subDepartmentId"],
    teamName: json["teamName"],
    teamManagerId: json["teamManagerId"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isDeleted: json["isDeleted"],
  );

  Map<String, dynamic> toJson() => {
    "teamId": teamId,
    "subDepartmentId": subDepartmentId,
    "teamName": teamName,
    "teamManagerId": teamManagerId,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isDeleted": isDeleted,
  };
}

class TicketTable {
  int id;
  int empId;
  int subdeptId;
  String deskNo;
  String type;
  String priority;
  String ticketStatus;
  String subject;
  String description;
  String stepsToReplicate;
  String comments;
  String attachmentUrl;
  DateTime createdAt;
  DateTime updatedAt;
  bool isdeleted;
  int assigneeId;

  TicketTable({
    required this.id,
    required this.empId,
    required this.subdeptId,
    required this.deskNo,
    required this.type,
    required this.priority,
    required this.ticketStatus,
    required this.subject,
    required this.description,
    required this.stepsToReplicate,
    required this.comments,
    required this.attachmentUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.isdeleted,
    required this.assigneeId,
  });

  factory TicketTable.fromJson(Map<String, dynamic> json) => TicketTable(
    id: json["id"],
    empId: json["empId"],
    subdeptId: json["subdeptId"],
    deskNo: json["deskNo"],
    type: json["type"],
    priority: json["priority"],
    ticketStatus: json["ticketStatus"],
    subject: json["subject"],
    description: json["description"],
    stepsToReplicate: json["stepsToReplicate"],
    comments: json["comments"],
    attachmentUrl: json["attachmentUrl"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    isdeleted: json["isdeleted"],
    assigneeId: json["assigneeId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "empId": empId,
    "subdeptId": subdeptId,
    "deskNo": deskNo,
    "type": type,
    "priority": priority,
    "ticketStatus": ticketStatus,
    "subject": subject,
    "description": description,
    "stepsToReplicate": stepsToReplicate,
    "comments": comments,
    "attachmentUrl": attachmentUrl,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "isdeleted": isdeleted,
    "assigneeId": assigneeId,
  };
}

class Educationdatum {
  int id;
  int employeeId;
  String degree;
  String university;
  String specialization;
  int gpa;
  DateTime degreeStartDate;
  DateTime degreeEndDate;
  String status;

  Educationdatum({
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

  factory Educationdatum.fromJson(Map<String, dynamic> json) => Educationdatum(
    id: json["id"],
    employeeId: json["employeeId"],
    degree: json["degree"],
    university: json["university"],
    specialization: json["specialization"],
    gpa: json["gpa"],
    degreeStartDate: DateTime.parse(json["degreeStartDate"]),
    degreeEndDate: DateTime.parse(json["degreeEndDate"]),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employeeId": employeeId,
    "degree": degree,
    "university": university,
    "specialization": specialization,
    "gpa": gpa,
    "degreeStartDate": degreeStartDate.toIso8601String(),
    "degreeEndDate": degreeEndDate.toIso8601String(),
    "status": status,
  };
}

class EmployementTable {
  int id;
  int empid;
  String jobType;
  DateTime empEffectiveDate;
  String empComments;
  int gradeId;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;

  EmployementTable({
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

  factory EmployementTable.fromJson(Map<String, dynamic> json) => EmployementTable(
    id: json["id"],
    empid: json["empid"],
    jobType: json["jobType"],
    empEffectiveDate: DateTime.parse(json["empEffectiveDate"]),
    empComments: json["empComments"],
    gradeId: json["gradeId"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "empid": empid,
    "jobType": jobType,
    "empEffectiveDate": empEffectiveDate.toIso8601String(),
    "empComments": empComments,
    "gradeId": gradeId,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
  };
}

class FamilyMember {
  int id;
  String memberName;
  DateTime dateOfBirth;
  int relationShipId;
  bool isDependent;
  bool isDeleted;
  int employeeId;
  RelationShip relationShip;

  FamilyMember({
    required this.id,
    required this.memberName,
    required this.dateOfBirth,
    required this.relationShipId,
    required this.isDependent,
    required this.isDeleted,
    required this.employeeId,
    required this.relationShip,
  });

  factory FamilyMember.fromJson(Map<String, dynamic> json) => FamilyMember(
    id: json["id"],
    memberName: json["memberName"],
    dateOfBirth: DateTime.parse(json["dateOfBirth"]),
    relationShipId: json["relationShipId"],
    isDependent: json["isDependent"],
    isDeleted: json["isDeleted"],
    employeeId: json["employeeId"],
    relationShip: RelationShip.fromJson(json["relationShip"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "memberName": memberName,
    "dateOfBirth": dateOfBirth.toIso8601String(),
    "relationShipId": relationShipId,
    "isDependent": isDependent,
    "isDeleted": isDeleted,
    "employeeId": employeeId,
    "relationShip": relationShip.toJson(),
  };
}

class RelationShip {
  int sno;
  String relationship1;
  String isdeleted;
  List<dynamic> familyMembers;

  RelationShip({
    required this.sno,
    required this.relationship1,
    required this.isdeleted,
    required this.familyMembers,
  });

  factory RelationShip.fromJson(Map<String, dynamic> json) => RelationShip(
    sno: json["sno"],
    relationship1: json["relationship1"],
    isdeleted: json["isdeleted"],
    familyMembers: List<dynamic>.from(json["familyMembers"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "sno": sno,
    "relationship1": relationship1,
    "isdeleted": isdeleted,
    "familyMembers": List<dynamic>.from(familyMembers.map((x) => x)),
  };
}

class IdentityTable {
  int empId;
  String identityType;
  String identityNumber;
  String attachment;
  bool isDeleted;
  int identityId;

  IdentityTable({
    required this.empId,
    required this.identityType,
    required this.identityNumber,
    required this.attachment,
    required this.isDeleted,
    required this.identityId,
  });

  factory IdentityTable.fromJson(Map<String, dynamic> json) => IdentityTable(
    empId: json["empId"],
    identityType: json["identityType"],
    identityNumber: json["identityNumber"],
    attachment: json["attachment"],
    isDeleted: json["isDeleted"],
    identityId: json["identityId"],
  );

  Map<String, dynamic> toJson() => {
    "empId": empId,
    "identityType": identityType,
    "identityNumber": identityNumber,
    "attachment": attachment,
    "isDeleted": isDeleted,
    "identityId": identityId,
  };
}

class Invoice {
  int id;
  int employeeId;
  int invoicenumber;
  DateTime invoicedate;
  String invoiceType;
  int money;
  String attachment;
  String status;
  String employeeName;
  String isdeleted;
  String description;

  Invoice({
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

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
    id: json["id"],
    employeeId: json["employeeId"],
    invoicenumber: json["invoicenumber"],
    invoicedate: DateTime.parse(json["invoicedate"]),
    invoiceType: json["invoiceType"],
    money: json["money"],
    attachment: json["attachment"],
    status: json["status"],
    employeeName: json["employeeName"],
    isdeleted: json["isdeleted"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employeeId": employeeId,
    "invoicenumber": invoicenumber,
    "invoicedate": invoicedate.toIso8601String(),
    "invoiceType": invoiceType,
    "money": money,
    "attachment": attachment,
    "status": status,
    "employeeName": employeeName,
    "isdeleted": isdeleted,
    "description": description,
  };
}

class Jobinformation {
  int id;
  int employeeId;
  DateTime effectiveDate;
  int reportsto;
  String department;
  String bussinessArea;
  String lopcation;
  String jobRole;
  String status;
  DateTime createddate;
  DateTime updateddate;
  int subdeptId;
  String subLocation;
  Sub subdept;

  Jobinformation({
    required this.id,
    required this.employeeId,
    required this.effectiveDate,
    required this.reportsto,
    required this.department,
    required this.bussinessArea,
    required this.lopcation,
    required this.jobRole,
    required this.status,
    required this.createddate,
    required this.updateddate,
    required this.subdeptId,
    required this.subLocation,
    required this.subdept,
  });

  factory Jobinformation.fromJson(Map<String, dynamic> json) => Jobinformation(
    id: json["id"],
    employeeId: json["employeeId"],
    effectiveDate: DateTime.parse(json["effectiveDate"]),
    reportsto: json["reportsto"],
    department: json["department"],
    bussinessArea: json["bussinessArea"],
    lopcation: json["lopcation"],
    jobRole: json["jobRole"],
    status: json["status"],
    createddate: DateTime.parse(json["createddate"]),
    updateddate: DateTime.parse(json["updateddate"]),
    subdeptId: json["subdeptId"],
    subLocation: json["subLocation"],
    subdept: Sub.fromJson(json["subdept"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employeeId": employeeId,
    "effectiveDate": effectiveDate.toIso8601String(),
    "reportsto": reportsto,
    "department": department,
    "bussinessArea": bussinessArea,
    "lopcation": lopcation,
    "jobRole": jobRole,
    "status": status,
    "createddate": createddate.toIso8601String(),
    "updateddate": updateddate.toIso8601String(),
    "subdeptId": subdeptId,
    "subLocation": subLocation,
    "subdept": subdept.toJson(),
  };
}

class KudosTable {
  int id;
  String title;
  String description;
  bool iSdeleted;
  DateTime posteddate;
  int employeeId;
  int senderEmployeeId;

  KudosTable({
    required this.id,
    required this.title,
    required this.description,
    required this.iSdeleted,
    required this.posteddate,
    required this.employeeId,
    required this.senderEmployeeId,
  });

  factory KudosTable.fromJson(Map<String, dynamic> json) => KudosTable(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    iSdeleted: json["iSdeleted"],
    posteddate: DateTime.parse(json["posteddate"]),
    employeeId: json["employeeId"],
    senderEmployeeId: json["senderEmployeeId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "iSdeleted": iSdeleted,
    "posteddate": posteddate.toIso8601String(),
    "employeeId": employeeId,
    "senderEmployeeId": senderEmployeeId,
  };
}

class LeaveBalanceTable {
  int id;
  int empId;
  int leavePolicyId;
  int leavesTaken;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;

  LeaveBalanceTable({
    required this.id,
    required this.empId,
    required this.leavePolicyId,
    required this.leavesTaken,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
  });

  factory LeaveBalanceTable.fromJson(Map<String, dynamic> json) => LeaveBalanceTable(
    id: json["id"],
    empId: json["empId"],
    leavePolicyId: json["leavePolicyId"],
    leavesTaken: json["leavesTaken"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "empId": empId,
    "leavePolicyId": leavePolicyId,
    "leavesTaken": leavesTaken,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
  };
}

class Myexpense {
  int id;
  int employeeId;
  DateTime expensedate;
  int amount;
  String attachment;
  String status;
  int expensesCode;
  String description;
  bool isManagementExpense;
  String isdeeleted;
  ExpensesCodeNavigation expensesCodeNavigation;

  Myexpense({
    required this.id,
    required this.employeeId,
    required this.expensedate,
    required this.amount,
    required this.attachment,
    required this.status,
    required this.expensesCode,
    required this.description,
    required this.isManagementExpense,
    required this.isdeeleted,
    required this.expensesCodeNavigation,
  });

  factory Myexpense.fromJson(Map<String, dynamic> json) => Myexpense(
    id: json["id"],
    employeeId: json["employeeId"],
    expensedate: DateTime.parse(json["expensedate"]),
    amount: json["amount"],
    attachment: json["attachment"],
    status: json["status"],
    expensesCode: json["expensesCode"],
    description: json["description"],
    isManagementExpense: json["isManagementExpense"],
    isdeeleted: json["isdeeleted"],
    expensesCodeNavigation: ExpensesCodeNavigation.fromJson(json["expensesCodeNavigation"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employeeId": employeeId,
    "expensedate": expensedate.toIso8601String(),
    "amount": amount,
    "attachment": attachment,
    "status": status,
    "expensesCode": expensesCode,
    "description": description,
    "isManagementExpense": isManagementExpense,
    "isdeeleted": isdeeleted,
    "expensesCodeNavigation": expensesCodeNavigation.toJson(),
  };
}

class ExpensesCodeNavigation {
  String expenseType;
  int expensesCode;
  String isdeleted;
  List<dynamic> myexpenses;

  ExpensesCodeNavigation({
    required this.expenseType,
    required this.expensesCode,
    required this.isdeleted,
    required this.myexpenses,
  });

  factory ExpensesCodeNavigation.fromJson(Map<String, dynamic> json) => ExpensesCodeNavigation(
    expenseType: json["expenseType"],
    expensesCode: json["expensesCode"],
    isdeleted: json["isdeleted"],
    myexpenses: List<dynamic>.from(json["myexpenses"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "expenseType": expenseType,
    "expensesCode": expensesCode,
    "isdeleted": isdeleted,
    "myexpenses": List<dynamic>.from(myexpenses.map((x) => x)),
  };
}

class OfferLetterTable {
  int id;
  int empId;
  DateTime offerSentDate;
  String offerSentStatus;
  int offerSentBy;
  String documentUrl;
  bool isdeleted;
  String status;
  int approvedBy;
  DateTime approvedDate;
  int approver;
  String comments;
  DateTime requestedDate;
  DateTime offerExpiryDate;
  DateTime startDate;

  OfferLetterTable({
    required this.id,
    required this.empId,
    required this.offerSentDate,
    required this.offerSentStatus,
    required this.offerSentBy,
    required this.documentUrl,
    required this.isdeleted,
    required this.status,
    required this.approvedBy,
    required this.approvedDate,
    required this.approver,
    required this.comments,
    required this.requestedDate,
    required this.offerExpiryDate,
    required this.startDate,
  });

  factory OfferLetterTable.fromJson(Map<String, dynamic> json) => OfferLetterTable(
    id: json["id"],
    empId: json["empId"],
    offerSentDate: DateTime.parse(json["offerSentDate"]),
    offerSentStatus: json["offerSentStatus"],
    offerSentBy: json["offerSentBy"],
    documentUrl: json["documentUrl"],
    isdeleted: json["isdeleted"],
    status: json["status"],
    approvedBy: json["approvedBy"],
    approvedDate: DateTime.parse(json["approvedDate"]),
    approver: json["approver"],
    comments: json["comments"],
    requestedDate: DateTime.parse(json["requestedDate"]),
    offerExpiryDate: DateTime.parse(json["offerExpiryDate"]),
    startDate: DateTime.parse(json["startDate"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "empId": empId,
    "offerSentDate": offerSentDate.toIso8601String(),
    "offerSentStatus": offerSentStatus,
    "offerSentBy": offerSentBy,
    "documentUrl": documentUrl,
    "isdeleted": isdeleted,
    "status": status,
    "approvedBy": approvedBy,
    "approvedDate": approvedDate.toIso8601String(),
    "approver": approver,
    "comments": comments,
    "requestedDate": requestedDate.toIso8601String(),
    "offerExpiryDate": offerExpiryDate.toIso8601String(),
    "startDate": startDate.toIso8601String(),
  };
}

class PayRollExpense {
  int employeeid;
  String employeename;
  int totalpayrollexpenses;
  int createdby;
  int updatedby;
  int noofhours;
  int payrate;
  int grosspay;
  int payrollexpense1;
  int insurancebycompany;
  DateTime payperiodstartdate;
  DateTime payperiodenddate;
  DateTime paymentdate;
  DateTime creationdate;
  DateTime updateddate;
  int id;

  PayRollExpense({
    required this.employeeid,
    required this.employeename,
    required this.totalpayrollexpenses,
    required this.createdby,
    required this.updatedby,
    required this.noofhours,
    required this.payrate,
    required this.grosspay,
    required this.payrollexpense1,
    required this.insurancebycompany,
    required this.payperiodstartdate,
    required this.payperiodenddate,
    required this.paymentdate,
    required this.creationdate,
    required this.updateddate,
    required this.id,
  });

  factory PayRollExpense.fromJson(Map<String, dynamic> json) => PayRollExpense(
    employeeid: json["employeeid"],
    employeename: json["employeename"],
    totalpayrollexpenses: json["totalpayrollexpenses"],
    createdby: json["createdby"],
    updatedby: json["updatedby"],
    noofhours: json["noofhours"],
    payrate: json["payrate"],
    grosspay: json["grosspay"],
    payrollexpense1: json["payrollexpense1"],
    insurancebycompany: json["insurancebycompany"],
    payperiodstartdate: DateTime.parse(json["payperiodstartdate"]),
    payperiodenddate: DateTime.parse(json["payperiodenddate"]),
    paymentdate: DateTime.parse(json["paymentdate"]),
    creationdate: DateTime.parse(json["creationdate"]),
    updateddate: DateTime.parse(json["updateddate"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "employeeid": employeeid,
    "employeename": employeename,
    "totalpayrollexpenses": totalpayrollexpenses,
    "createdby": createdby,
    "updatedby": updatedby,
    "noofhours": noofhours,
    "payrate": payrate,
    "grosspay": grosspay,
    "payrollexpense1": payrollexpense1,
    "insurancebycompany": insurancebycompany,
    "payperiodstartdate": payperiodstartdate.toIso8601String(),
    "payperiodenddate": payperiodenddate.toIso8601String(),
    "paymentdate": paymentdate.toIso8601String(),
    "creationdate": creationdate.toIso8601String(),
    "updateddate": updateddate.toIso8601String(),
    "id": id,
  };
}

class RoleUser {
  int id;
  int roleId;
  int empId;
  bool isDeleted;
  RoleUserRole role;

  RoleUser({
    required this.id,
    required this.roleId,
    required this.empId,
    required this.isDeleted,
    required this.role,
  });

  factory RoleUser.fromJson(Map<String, dynamic> json) => RoleUser(
    id: json["id"],
    roleId: json["roleId"],
    empId: json["empId"],
    isDeleted: json["isDeleted"],
    role: RoleUserRole.fromJson(json["role"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "roleId": roleId,
    "empId": empId,
    "isDeleted": isDeleted,
    "role": role.toJson(),
  };
}

class RoleUserRole {
  int roleId;
  String roleName;
  String roleDescription;
  bool isDeleted;
  List<RolePermission> rolePermissions;
  List<dynamic> roleUsers;

  RoleUserRole({
    required this.roleId,
    required this.roleName,
    required this.roleDescription,
    required this.isDeleted,
    required this.rolePermissions,
    required this.roleUsers,
  });

  factory RoleUserRole.fromJson(Map<String, dynamic> json) => RoleUserRole(
    roleId: json["roleId"],
    roleName: json["roleName"],
    roleDescription: json["roleDescription"],
    isDeleted: json["isDeleted"],
    rolePermissions: List<RolePermission>.from(json["rolePermissions"].map((x) => RolePermission.fromJson(x))),
    roleUsers: List<dynamic>.from(json["roleUsers"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "roleId": roleId,
    "roleName": roleName,
    "roleDescription": roleDescription,
    "isDeleted": isDeleted,
    "rolePermissions": List<dynamic>.from(rolePermissions.map((x) => x.toJson())),
    "roleUsers": List<dynamic>.from(roleUsers.map((x) => x)),
  };
}

class RolePermission {
  int permissionId;
  String permissionMatrix;
  int roleId;
  bool isDeleted;

  RolePermission({
    required this.permissionId,
    required this.permissionMatrix,
    required this.roleId,
    required this.isDeleted,
  });

  factory RolePermission.fromJson(Map<String, dynamic> json) => RolePermission(
    permissionId: json["permissionId"],
    permissionMatrix: json["permissionMatrix"],
    roleId: json["roleId"],
    isDeleted: json["isDeleted"],
  );

  Map<String, dynamic> toJson() => {
    "permissionId": permissionId,
    "permissionMatrix": permissionMatrix,
    "roleId": roleId,
    "isDeleted": isDeleted,
  };
}

class Timeoff {
  int employeeId;
  int duration;
  DateTime enddate;
  DateTime startdate;
  String notes;
  String status;
  int id;
  DateTime date;
  int leavesapplied;
  int remainingleaves;
  int leavePolicyId;
  String isdeleted;
  bool isDaytype;
  LeavePolicy leavePolicy;

  Timeoff({
    required this.employeeId,
    required this.duration,
    required this.enddate,
    required this.startdate,
    required this.notes,
    required this.status,
    required this.id,
    required this.date,
    required this.leavesapplied,
    required this.remainingleaves,
    required this.leavePolicyId,
    required this.isdeleted,
    required this.isDaytype,
    required this.leavePolicy,
  });

  factory Timeoff.fromJson(Map<String, dynamic> json) => Timeoff(
    employeeId: json["employeeId"],
    duration: json["duration"],
    enddate: DateTime.parse(json["enddate"]),
    startdate: DateTime.parse(json["startdate"]),
    notes: json["notes"],
    status: json["status"],
    id: json["id"],
    date: DateTime.parse(json["date"]),
    leavesapplied: json["leavesapplied"],
    remainingleaves: json["remainingleaves"],
    leavePolicyId: json["leavePolicyId"],
    isdeleted: json["isdeleted"],
    isDaytype: json["isDaytype"],
    leavePolicy: LeavePolicy.fromJson(json["leavePolicy"]),
  );

  Map<String, dynamic> toJson() => {
    "employeeId": employeeId,
    "duration": duration,
    "enddate": enddate.toIso8601String(),
    "startdate": startdate.toIso8601String(),
    "notes": notes,
    "status": status,
    "id": id,
    "date": date.toIso8601String(),
    "leavesapplied": leavesapplied,
    "remainingleaves": remainingleaves,
    "leavePolicyId": leavePolicyId,
    "isdeleted": isdeleted,
    "isDaytype": isDaytype,
    "leavePolicy": leavePolicy.toJson(),
  };
}

class LeavePolicy {
  int lpId;
  int categoryId;
  int gradeId;
  int maxDays;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;
  int employeId;
  Category category;
  Grade grade;
  List<dynamic> timeoffs;

  LeavePolicy({
    required this.lpId,
    required this.categoryId,
    required this.gradeId,
    required this.maxDays,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
    required this.employeId,
    required this.category,
    required this.grade,
    required this.timeoffs,
  });

  factory LeavePolicy.fromJson(Map<String, dynamic> json) => LeavePolicy(
    lpId: json["lpId"],
    categoryId: json["categoryId"],
    gradeId: json["gradeId"],
    maxDays: json["maxDays"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
    employeId: json["employeId"],
    category: Category.fromJson(json["category"]),
    grade: Grade.fromJson(json["grade"]),
    timeoffs: List<dynamic>.from(json["timeoffs"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "lpId": lpId,
    "categoryId": categoryId,
    "gradeId": gradeId,
    "maxDays": maxDays,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
    "employeId": employeId,
    "category": category.toJson(),
    "grade": grade.toJson(),
    "timeoffs": List<dynamic>.from(timeoffs.map((x) => x)),
  };
}

class Category {
  int categoryId;
  String categoryName;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;
  bool status;
  List<dynamic> leavePolicyTables;

  Category({
    required this.categoryId,
    required this.categoryName,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
    required this.status,
    required this.leavePolicyTables,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    categoryId: json["categoryId"],
    categoryName: json["categoryName"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
    status: json["status"],
    leavePolicyTables: List<dynamic>.from(json["leavePolicyTables"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,
    "categoryName": categoryName,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
    "status": status,
    "leavePolicyTables": List<dynamic>.from(leavePolicyTables.map((x) => x)),
  };
}

class Grade {
  int gradeId;
  String gradeName;
  String jobGrade;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;
  List<dynamic> leavePolicyTables;
  List<ProjectsRole> projectsRoles;
  List<RateTable> rateTables;

  Grade({
    required this.gradeId,
    required this.gradeName,
    required this.jobGrade,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
    required this.leavePolicyTables,
    required this.projectsRoles,
    required this.rateTables,
  });

  factory Grade.fromJson(Map<String, dynamic> json) => Grade(
    gradeId: json["gradeId"],
    gradeName: json["gradeName"],
    jobGrade: json["jobGrade"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
    leavePolicyTables: List<dynamic>.from(json["leavePolicyTables"].map((x) => x)),
    projectsRoles: List<ProjectsRole>.from(json["projectsRoles"].map((x) => ProjectsRole.fromJson(x))),
    rateTables: List<RateTable>.from(json["rateTables"].map((x) => RateTable.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "gradeId": gradeId,
    "gradeName": gradeName,
    "jobGrade": jobGrade,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
    "leavePolicyTables": List<dynamic>.from(leavePolicyTables.map((x) => x)),
    "projectsRoles": List<dynamic>.from(projectsRoles.map((x) => x.toJson())),
    "rateTables": List<dynamic>.from(rateTables.map((x) => x.toJson())),
  };
}

class ProjectsRole {
  int prid;
  int projectId;
  int roleId;
  int gradeId;
  int billableRate;
  bool isBillabe;
  DateTime createdat;
  bool isdeleted;
  DateTime updatedat;
  ProjectsRoleRole role;

  ProjectsRole({
    required this.prid,
    required this.projectId,
    required this.roleId,
    required this.gradeId,
    required this.billableRate,
    required this.isBillabe,
    required this.createdat,
    required this.isdeleted,
    required this.updatedat,
    required this.role,
  });

  factory ProjectsRole.fromJson(Map<String, dynamic> json) => ProjectsRole(
    prid: json["prid"],
    projectId: json["projectId"],
    roleId: json["roleId"],
    gradeId: json["gradeId"],
    billableRate: json["billableRate"],
    isBillabe: json["isBillabe"],
    createdat: DateTime.parse(json["createdat"]),
    isdeleted: json["isdeleted"],
    updatedat: DateTime.parse(json["updatedat"]),
    role: ProjectsRoleRole.fromJson(json["role"]),
  );

  Map<String, dynamic> toJson() => {
    "prid": prid,
    "projectId": projectId,
    "roleId": roleId,
    "gradeId": gradeId,
    "billableRate": billableRate,
    "isBillabe": isBillabe,
    "createdat": createdat.toIso8601String(),
    "isdeleted": isdeleted,
    "updatedat": updatedat.toIso8601String(),
    "role": role.toJson(),
  };
}

class ProjectsRoleRole {
  int sno;
  String jobRole1;
  String isdeleted;
  List<dynamic> projectsRoles;

  ProjectsRoleRole({
    required this.sno,
    required this.jobRole1,
    required this.isdeleted,
    required this.projectsRoles,
  });

  factory ProjectsRoleRole.fromJson(Map<String, dynamic> json) => ProjectsRoleRole(
    sno: json["sno"],
    jobRole1: json["jobRole1"],
    isdeleted: json["isdeleted"],
    projectsRoles: List<dynamic>.from(json["projectsRoles"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "sno": sno,
    "jobRole1": jobRole1,
    "isdeleted": isdeleted,
    "projectsRoles": List<dynamic>.from(projectsRoles.map((x) => x)),
  };
}

class RateTable {
  int rateId;
  String country;
  int billableRate;
  String currency;
  int gradeId;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;
  int costRate;

  RateTable({
    required this.rateId,
    required this.country,
    required this.billableRate,
    required this.currency,
    required this.gradeId,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
    required this.costRate,
  });

  factory RateTable.fromJson(Map<String, dynamic> json) => RateTable(
    rateId: json["rateId"],
    country: json["country"],
    billableRate: json["billableRate"],
    currency: json["currency"],
    gradeId: json["gradeId"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
    costRate: json["costRate"],
  );

  Map<String, dynamic> toJson() => {
    "rateId": rateId,
    "country": country,
    "billableRate": billableRate,
    "currency": currency,
    "gradeId": gradeId,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
    "costRate": costRate,
  };
}

class TimesheetTable {
  int timesheetId;
  int empId;
  int projectId;
  int taskId;
  String monday;
  String tuesday;
  String wednesday;
  String thursday;
  String friday;
  String saturday;
  String sunday;
  DateTime weekStartDate;
  DateTime weekEndDate;
  DateTime createdat;
  bool isdeleted;
  DateTime updatedat;
  String status;
  String tstatus;
  String totalHours;
  Project project;
  Task task;

  TimesheetTable({
    required this.timesheetId,
    required this.empId,
    required this.projectId,
    required this.taskId,
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
    required this.weekStartDate,
    required this.weekEndDate,
    required this.createdat,
    required this.isdeleted,
    required this.updatedat,
    required this.status,
    required this.tstatus,
    required this.totalHours,
    required this.project,
    required this.task,
  });

  factory TimesheetTable.fromJson(Map<String, dynamic> json) => TimesheetTable(
    timesheetId: json["timesheetId"],
    empId: json["empId"],
    projectId: json["projectId"],
    taskId: json["taskId"],
    monday: json["monday"],
    tuesday: json["tuesday"],
    wednesday: json["wednesday"],
    thursday: json["thursday"],
    friday: json["friday"],
    saturday: json["saturday"],
    sunday: json["sunday"],
    weekStartDate: DateTime.parse(json["weekStartDate"]),
    weekEndDate: DateTime.parse(json["weekEndDate"]),
    createdat: DateTime.parse(json["createdat"]),
    isdeleted: json["isdeleted"],
    updatedat: DateTime.parse(json["updatedat"]),
    status: json["status"],
    tstatus: json["tstatus"],
    totalHours: json["totalHours"],
    project: Project.fromJson(json["project"]),
    task: Task.fromJson(json["task"]),
  );

  Map<String, dynamic> toJson() => {
    "timesheetId": timesheetId,
    "empId": empId,
    "projectId": projectId,
    "taskId": taskId,
    "monday": monday,
    "tuesday": tuesday,
    "wednesday": wednesday,
    "thursday": thursday,
    "friday": friday,
    "saturday": saturday,
    "sunday": sunday,
    "weekStartDate": weekStartDate.toIso8601String(),
    "weekEndDate": weekEndDate.toIso8601String(),
    "createdat": createdat.toIso8601String(),
    "isdeleted": isdeleted,
    "updatedat": updatedat.toIso8601String(),
    "status": status,
    "tstatus": tstatus,
    "totalHours": totalHours,
    "project": project.toJson(),
    "task": task.toJson(),
  };
}

class Project {
  int projectId;
  String projectName;
  int clientId;
  DateTime startDate;
  DateTime endDate;
  String colourId;
  String description;
  int maxBillHours;
  int overTimeFactor;
  DateTime createdat;
  bool isdeleted;
  DateTime updatedat;
  Client client;
  List<ProjectsRole> projectsRoles;
  List<Task> taskTables;
  List<dynamic> timesheetTables;

  Project({
    required this.projectId,
    required this.projectName,
    required this.clientId,
    required this.startDate,
    required this.endDate,
    required this.colourId,
    required this.description,
    required this.maxBillHours,
    required this.overTimeFactor,
    required this.createdat,
    required this.isdeleted,
    required this.updatedat,
    required this.client,
    required this.projectsRoles,
    required this.taskTables,
    required this.timesheetTables,
  });

  factory Project.fromJson(Map<String, dynamic> json) => Project(
    projectId: json["projectId"],
    projectName: json["projectName"],
    clientId: json["clientId"],
    startDate: DateTime.parse(json["startDate"]),
    endDate: DateTime.parse(json["endDate"]),
    colourId: json["colourId"],
    description: json["description"],
    maxBillHours: json["maxBillHours"],
    overTimeFactor: json["overTimeFactor"],
    createdat: DateTime.parse(json["createdat"]),
    isdeleted: json["isdeleted"],
    updatedat: DateTime.parse(json["updatedat"]),
    client: Client.fromJson(json["client"]),
    projectsRoles: List<ProjectsRole>.from(json["projectsRoles"].map((x) => ProjectsRole.fromJson(x))),
    taskTables: List<Task>.from(json["taskTables"].map((x) => Task.fromJson(x))),
    timesheetTables: List<dynamic>.from(json["timesheetTables"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "projectId": projectId,
    "projectName": projectName,
    "clientId": clientId,
    "startDate": startDate.toIso8601String(),
    "endDate": endDate.toIso8601String(),
    "colourId": colourId,
    "description": description,
    "maxBillHours": maxBillHours,
    "overTimeFactor": overTimeFactor,
    "createdat": createdat.toIso8601String(),
    "isdeleted": isdeleted,
    "updatedat": updatedat.toIso8601String(),
    "client": client.toJson(),
    "projectsRoles": List<dynamic>.from(projectsRoles.map((x) => x.toJson())),
    "taskTables": List<dynamic>.from(taskTables.map((x) => x.toJson())),
    "timesheetTables": List<dynamic>.from(timesheetTables.map((x) => x)),
  };
}

class Client {
  int clientId;
  String clientName;
  String contactMail;
  String line1;
  String line2;
  String city;
  String state;
  String postcode;
  String comments;
  DateTime createdat;
  bool isdeleted;
  DateTime updatedat;
  String country;
  List<dynamic> projects;

  Client({
    required this.clientId,
    required this.clientName,
    required this.contactMail,
    required this.line1,
    required this.line2,
    required this.city,
    required this.state,
    required this.postcode,
    required this.comments,
    required this.createdat,
    required this.isdeleted,
    required this.updatedat,
    required this.country,
    required this.projects,
  });

  factory Client.fromJson(Map<String, dynamic> json) => Client(
    clientId: json["clientId"],
    clientName: json["clientName"],
    contactMail: json["contactMail"],
    line1: json["line1"],
    line2: json["line2"],
    city: json["city"],
    state: json["state"],
    postcode: json["postcode"],
    comments: json["comments"],
    createdat: DateTime.parse(json["createdat"]),
    isdeleted: json["isdeleted"],
    updatedat: DateTime.parse(json["updatedat"]),
    country: json["country"],
    projects: List<dynamic>.from(json["projects"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "clientId": clientId,
    "clientName": clientName,
    "contactMail": contactMail,
    "line1": line1,
    "line2": line2,
    "city": city,
    "state": state,
    "postcode": postcode,
    "comments": comments,
    "createdat": createdat.toIso8601String(),
    "isdeleted": isdeleted,
    "updatedat": updatedat.toIso8601String(),
    "country": country,
    "projects": List<dynamic>.from(projects.map((x) => x)),
  };
}

class Task {
  int taskId;
  String taskName;
  int projectId;
  DateTime createdat;
  DateTime updatedat;
  String isdeleted;
  List<dynamic> timesheetTables;

  Task({
    required this.taskId,
    required this.taskName,
    required this.projectId,
    required this.createdat,
    required this.updatedat,
    required this.isdeleted,
    required this.timesheetTables,
  });

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    taskId: json["taskId"],
    taskName: json["taskName"],
    projectId: json["projectId"],
    createdat: DateTime.parse(json["createdat"]),
    updatedat: DateTime.parse(json["updatedat"]),
    isdeleted: json["isdeleted"],
    timesheetTables: List<dynamic>.from(json["timesheetTables"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "taskId": taskId,
    "taskName": taskName,
    "projectId": projectId,
    "createdat": createdat.toIso8601String(),
    "updatedat": updatedat.toIso8601String(),
    "isdeleted": isdeleted,
    "timesheetTables": List<dynamic>.from(timesheetTables.map((x) => x)),
  };
}

class Visainformation {
  int employeeId;
  String visatype;
  String issuedcountry;
  DateTime issueddate;
  DateTime expirydate;
  String vstatus;
  String notes;
  int id;

  Visainformation({
    required this.employeeId,
    required this.visatype,
    required this.issuedcountry,
    required this.issueddate,
    required this.expirydate,
    required this.vstatus,
    required this.notes,
    required this.id,
  });

  factory Visainformation.fromJson(Map<String, dynamic> json) => Visainformation(
    employeeId: json["employeeId"],
    visatype: json["visatype"],
    issuedcountry: json["issuedcountry"],
    issueddate: DateTime.parse(json["issueddate"]),
    expirydate: DateTime.parse(json["expirydate"]),
    vstatus: json["vstatus"],
    notes: json["notes"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "employeeId": employeeId,
    "visatype": visatype,
    "issuedcountry": issuedcountry,
    "issueddate": issueddate.toIso8601String(),
    "expirydate": expirydate.toIso8601String(),
    "vstatus": vstatus,
    "notes": notes,
    "id": id,
  };
}
