
import '../utils/strings.dart';

class APIs {
  // modify url from Strings file for dev and staging here
  static const String baseUrl = Strings.baseUrl;

  // Login Journey
  static const String getEmpByEmailId = "/api/Register/GetemployeebyemailID";
  static const String register = "/api/Register/";
  static const String login = "/api/Register/login/";
  static const String getReporteesByEmpId = "/api/Register/getbyids/{EmployeeId}";

  // My Info
  static const String getMyInfo = "/api/Register/{EmployeeId}";
  static const String getEducationList = "/api/Educationdatum/{EmployeeId}";
  static const String getVisaList = "/api/Visa/{EmployeeId}";
  static const String getDirectReportees = "/api/Register/{Reportsto}";

  // Job details
  static const String getJobDataByEmpId = "/api/Job/{EmployeeId}";
  static const String getEmploymentByEmpId = "/api/Employement/{EmployeeId}";
  static const String getAssignmentsClientsByEmpId =
      "/api/Assignment/getclientnames/{EmpId}";

  // My Requests: Expenses, Invoices
  static const String myExpenses = "/api/MyExpenses/";
  static const String myExpensesById = "/api/MyExpenses/Getexpbyid/{EmployeeId}";
  static const String getExpenseType = "/api/Expense/";
  static const String updateExpenses = "/api/MyExpenses/UPDATE";
  static const String myInvoices = "/api/Invoice/";
  static const String myInvoicesById = "/api/Invoice/getbyid/{EmployeeId}";
  static const String getInvoiceType = "/api/Invoicetype/";
  static const String updateInvoices = "/api/Invoice/updateinv";

  // Pending Approvals: Expenses, Invoices, Timesheet, Time-off
  static const String reporteesExpensesByEmpId =
      "/api/MyExpenses/Direct/{EmployeeId}";
  static const String reporteesInvoicesByEmpId = "/api/Invoice/{EmployeeId}";
  static const String reporteesTimesheetByEmpId = "/api/Timesheet/getbyid/{EmpId}";
  static const String approveTimesheet = "/api/Timesheet/timesheetapprove";
  static const String reporteesTimeoffByEmpId =
      "/api/Timeoff/Getpendingapprove/{EmployeeId}";
  static const String updatePendingTimeOffRequest = "/api/Timeoff/Pending";

  // My Work: Timesheet, Time-off
  static const String getTimesheet = "/api/Timesheet/Get";
  static const String postTimesheet = "/api/Timesheet/Post";
  static const String getEmpRecords = "/api/Timesheet/GetEmpRecords/";
  static const String getTimesheetRecords = "/api/Timesheet/timesheetapprove/";
  static const String withdrawApprovedTimesheet = "/api/Timesheet/UPDATER";
  static const String deleteTimesheetRecord = "/api/Timesheet/DeleteUPDATER";
  static const String getTimeOff = "/api/Timeoff";
  static const String postTimeOff = "/api/Timeoff/";
  static const String updateTimeOffRequest = "/api/Timeoff/Pending";
  static const String getLeavePolicyByGradeId =
      "/api/LeavePolicy/getbygradeid/{LPGId}";
  static const String getAllLeavesList = "/api/LeavePolicy/getall/";
  static const String getTimeOffByEmpId = "/api/Timeoff/{EmployeeId}";
  static const String getTimeOffByLPId = "/api/Timeoff/LPID/{empid}";
  static const String getProjectsList = "/api/Project";
  static const String getProjectName = "/api/Project/getbyid/{ProjectId}";
  static const String getTasksList = "/api/TaskTable";
  static const String getTaskByEmpId = "/api/Assignment/getEMPIDTasks/{EmpId}";
  static const String getProjectListTimesheet = "/api/Assignment/projectdatalist";
  static const String getLeavesList = "/api/Leaves";
  static const String getLeaveTypeList = "/api/LeavesCategory";
  static const String getLeavePolicyByLPId = "/api/LeavePolicy/getbyid/{LPId}";
  static const String getLeaveBalanceByEmpId = "/api/LeaveBalance/getbyid/{LBEId}";
  static const String approvedTimeOffLeaveBalance = "/api/LeaveBalance";
  static const String getApprovedTimesheetRecords =
      "/api/Timesheet/getbyidwithdraw/{EmpId}";

  // Images
  static const String getProfileImage = "/api/FileSystem/Downloadfile";
  static const String uploadFile = "/api/FileSystem/uploadfiletodirectory";

  // Custom email generation for requests submit, approval, reject
  static const String emailTimeoffRequest =
      "/api/CustomEmailGeneration/TimeoffEmail";
  static const String emailTimeoffApproval =
      "/api/CustomEmailGeneration/TimeoffApproval";
  static const String emailTimeoffRejection =
      "/api/CustomEmailGeneration/TimeoffReject";
  static const String emailTimesheetRequest =
      "/api/CustomEmailGeneration/TimesheetSubmit";
  static const String emailTimesheetApproval =
      "/api/CustomEmailGeneration/TimesheetApproval";
  static const String emailTimesheetRejection =
      "/api/CustomEmailGeneration/TimesheetReject";
  static const String emailExpenseRequest =
      "/api/CustomEmailGeneration/ExpensesEmail";
  static const String emailExpenseApproval =
      "/api/CustomEmailGeneration/ExpensesApproval";
  static const String emailExpenseRejection =
      "/api/CustomEmailGeneration/ExpensesReject";
  static const String emailInvoiceRequest =
      "/api/CustomEmailGeneration/InvoicesEmail";
  static const String emailInvoiceApproval =
      "/api/CustomEmailGeneration/InvoiceApproval";
  static const String emailInvoiceRejection =
      "/api/CustomEmailGeneration/InvoiceReject";

//authentication using MSAL
/*static const String[] SCOPES = {"user.read"};
  static const String  CLIENT_ID = "9a09dcfb-a22f-4fdf-a014-38990e558d80";
  static const String AUTHORITY = "https://login.microsoftonline.com/organizations/";
  static const String REDIRECT_URI = "msauth://com.snad.hrms_android/rBCDimF%2F6J667cAZT1G898H2yWE%3D";
  static const String[] SCOPE_URI = {"api://f9ad74b1-d17f-4175-9097-f543691f6bec/api-access"};
*/
}
