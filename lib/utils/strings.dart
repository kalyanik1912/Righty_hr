class Strings {
  //Base URLs
  //QA Base URL
  static const String baseUrl = "snadqaapi.onpremise.snadhr.com";

// Dev Base URL
//   static const String baseUrl = "snaddevapi.onpremise.snadhr.com";
// Production Base URL
//   static const String baseUrl = "api.snad.snadhr.com";

  //Response codes
  static const String success = "success";
  static const String error = "error";
  static const String no_data = "No data available";
  static const String access_token = "accessToken";
  static const String id = "id";
  static const String x_tenant_id = "dev";

  //Titles
  static const String dashboard = "Dashboard";
  static const String my_info = "My Info";
  static const String my_work = "My Work";
  static const String my_requests = "My Requests";
  static const String menu = "Menu";
  static const String pending_request = "Pending Requests";
  static const String active_employees = "Active Employees";

  // Login related strings
  static const String title_activity_login = "LoginActivity";
  static const String prompt_email = "Email";
  static const String prompt_password = "Password";
  static const String login = "Log In";
  static const String action_sign_in = "Sign in or register";
  static const String action_sign_in_short = "Sign in";
  static const String welcome = "Welcome !";
  static const String invalid_username = "Not a valid username";
  static const String invalid_password = "Password must be >5 characters";
  static const String login_failed = "Login failed";
  static const String login_to_your_account = "Login To Your Account";
  static const String logout = "Logout";
  static const String firstName_validation = "Please enter first name";
  static const String lastName_validation = "Please enter last name";
  static const String password_validation = "Please enter password";
  static const String password_hint = "Enter Password";
  static const String email_hint = "Enter Email Id";
  static const String email_validation = "Please enter email";
  static const String valid_email_validation = "Please enter valid email";
  static const String mobile_number_validation = "Please enter mobile number";
  static const String valid_mobile_number_validation =
      "Please enter valid mobile number";
  static const String login_error = "Invalid email or password";
  static const String fail_error =
      "Unable to process your request, please try again later";
  static const String network_error = "Please check your network and try again";
  static const String session_expired = "Session expired please login again";
  static const String remember_me = "Remember Me";
  static const String forgot_password = "Forgot Password?";
  static const String wifi_enabled = "Wfi Enabled";
  static const String mobile_data_enable = "Mobile Data Enabled";
  static const String not_connected_to_internet = "Not connected to internet";
  static const String oops_no_internet = "OOPS! NO INTERNET";
  static const String try_again = "Try Again";

  // My info strings
  static const String personal_info = "Personal Information";
  static const String job_details = "Job Details";
  static const String personal = "Personal";
  static const String job = "Job";
  static const String people = "People";

  // Personal Details Strings
  static const String basic_info = "Basic Information";
  static const String employee_id = "Employee ID";
  static const String gender = "Gender";
  static const String dob = "Date of Birth";
  static const String marital_status = "Marital Status";
  static const String education = "Education";
  static const String degree = "Degree";
  static const String university = "University";
  static const String specialization = "Specialization";
  static const String gpa = "GPA";
  static const String degree_start_date = "Degree Start Date";
  static const String degree_end_date = "Degree End Date";
  static const String visa_info = "Visa Information";
  static const String visa_type = "Visa Type";
  static const String issuing_country = "Issuing Country";
  static const String issued_date = "Issued Date";
  static const String expiry_date = "Expiry Date";
  static const String status = "Status";
  static const String contact_details = "Contact Details";
  static const String work_phone = "Work Phone";
  static const String mobile_phone = "Mobile Phone";
  static const String work_email = "Work Email";
  static const String home_email = "Home Email";
  static const String emergency_contact_details = "Emergency Contact Details";
  static const String name = "Name";
  static const String email_id = "Email-ID";
  static const String phone_number = "Phone Number";
  static const String relationship = "Relationship";

  // Job Details Strings
  static const String date_of_joining = "Date of Joining";
  static const String employment_type = "Employment Type";
  static const String job_type = "Job Type";
  static const String emp_effective_date = "Emp Effective Date";
  static const String comments = "Comments";
  static const String effective_date = "Effective Date";
  static const String job_role = "Job Role";
  static const String reporting_to = "Reporting To";
  static const String department = "Department";
  static const String business_area = "Business Area";
  static const String location = "Location";
  static const String my_assignments = "My Assignments";
  static const String project_name = "Project Name";
  static const String client_name = "Client Name";
  static const String project_start_date = "Project Start Date";
  static const String project_end_date = "Project End Date";
  static const String direct_reportees = "Direct Reportees";
  static const String reportees = "Reportees";

  // My Requests Strings
  static const String expenses = "Expenses";
  static const String invoices = "Invoices";
  static const String pending_approvals = "Pending Approvals";
  static const String history = "History";

  // My Expense Requests strings
  static const String total_expenses = "Total Expenses";
  static const String add_expense = "Add Expense";
  static const String add_new_expense = "Add New Expense";
  static const String expense_code = "Expense Code";
  static const String expense_date = "Expense Date";
  static const String expense_type = "Expense Type";
  static const String amount = "Amount";
  static const String attachment = "Attachment";
  static const String view = "View";
  static const String read_more = "Read More";
  static const String read_less = "Read Less";

  static const String expense_prompts = "Select Expense Type";
  static const String add_expense_type = "Expense Type*";
  static const String add_expense_date = "Expense Date*";
  static const String new_expense = "New Expense";
  static const String new_expense_request = "New Expense Request";
  static const String expense_amount = "Amount*";
  static const String description = "Description*";
  static const String add_attachment = "Attachment*";
  static const String upload = "Upload";
  static const String save = "Save";
  static const String save_n_submit = "Save & Submit";
  static const String submit = "Submit";
  static const String draft = "Draft";
  static const String pending = "Pending";
  static const String edit_expense = "Edit Expense Request";
  static const String desc = "Description";

  // Add new Expense Form Validation Messages
  static const String error_expense_type = "Please add valid expense type";
  static const String error_expense_date = "Please add valid expense date";
  static const String error_expense_amount = "Please add valid expense amount";
  static const String error_expense_desc =
      "Please add valid expense description";
  static const String error_expense_attachment =
      "Please add valid expense proof attachment";

  // My Invoice Requests strings
  static const String total_invoices = "Total Invoice Amount";
  static const String invoice_date = "Invoice Date";
  static const String invoice_type = "Invoice Type";
  static const String invoice_num = "Invoice Number";
  static const String add_new_invoice = "Add New Invoice";
  static const String new_invoice = "New Invoice";
  static const String new_invoice_request = "New Invoice Request";
  static const String invoice_id = "Invoice ID";
  static const String invoice_date_mandatory = "Invoice Date*";
  static const String invoice_type_mandatory = "Invoice Type*";
  static const String invoice_num_mandatory = "Invoice Number*";
  static const String invoice_status = "Invoice Status*";
  static const String invoice_amount = "Amount*";

  static const String invoice_type_prompts = "Select Invoice Type";
  static const String notes = "Notes";
  static const String edit_invoice = "Edit Invoice Request";
  static const String cancel = "Cancel";

  // Add new Invoice Form Validation Messages and hint texts
  static const String error_invoice_type = "Please add valid invoice type";
  static const String error_invoice_number = "Please add valid invoice number";
  static const String error_invoice_date = "Please add valid invoice date";
  static const String error_invoice_amount = "Please add valid invoice amount";
  static const String error_invoice_desc =
      "Please add valid invoice description";
  static const String error_invoice_attachment =
      "Please add valid invoice proof attachment";

  // No data texts
  static const String no_visa_info_available = "No Visa Information Available";
  static const String no_education_details_available =
      "No Education Details Available";
  static const String no_assignment_details_available =
      "No Assignment Details Available";
  static const String no_direct_reportees_present =
      "No Direct Reportees Present";
  static const String no_employees_available = "No Employees Available";
  static const String no_expenses_data = "No Expense Requests Available";
  static const String no_invoices_available = "No Invoice Requests Available";
  static const String no_pending_expenses = "No Pending Expenses Available";
  static const String no_pending_invoices = "No Pending Invoices Available";
  static const String no_pending_timesheet =
      "No Pending Timesheet Approval Requests Available";
  static const String no_pending_time_off =
      "No Pending Time-off Approval Requests Available";
  static const String no_approved_timesheet =
      "No Approved Timesheet Approval Requests Available";
  static const String no_requested_time_off =
      "No Requested Time-off Requests Available";
  static const String no_upcoming_time_off =
      "No Upcoming Time-off Requests Available";
  static const String no_history_time_off = "No Time-off Requests Available";
  static const String no_leave_types = "No Leave Types Available";
  static const String no_projects_data = "No Projects Available";
  static const String no_tasks_data = "No Tasks Available";

  // Pending Approvals: Expenses, Invoices, Timesheet, TimeOff
  static const String timesheet = "Timesheet";
  static const String time_off = "Time-off";
  static const String pending_expenses = "Pending Expenses";
  static const String pending_invoices = "Pending Invoices";
  static const String pending_timesheet = "Pending Timesheet";
  static const String pending_time_off = "Pending Time-off";
  static const String employee_name = "Employee Name";
  static const String approve = "Approve";
  static const String reject = "Reject";
  static const String edit = "Edit";
  static const String start_date = "Start Date";
  static const String end_date = "End Date";
  static const String duration = "Duration";
  static const String leave_type = "Leave Type";
  static const String leave_calender = "Leave Calender";
  static const String applied_date = "Applied Date";

  // Image or icon content description texts
  static const String expand_view = "Expand View";
  static const String display_request_status = "Display Request Status";
  static const String close_dialog = "Close Dialog";
  static const String select_expense_date = "Select Expense Date";
  static const String enter_expense_amount = "Enter Expense Amount";
  static const String description_hint = "Enter Description Here";
  static const String file_name = "File name";
  static const String no_file_chosen = "No file chosen";
  static const String enter_invoice_amount = "Enter Invoice Amount";
  static const String select_invoice_date = "Select Invoice Date";
  static const String enter_invoice_number = "Enter Invoice Number";
  static const String go_to_previous_screen = "Go to previous screen";
  static const String global_search = "Global search";
  static const String view_or_hide_password = "view or hide password";
  static const String view_calender = "View Calendar";

  // Time-off
  static const String requested = "Requested";
  static const String upcoming = "Upcoming";
  static const String leaves = "Leaves";
  static const String book_leave = "Book Leave";
  static const String total_leaves = "Total Leaves";
  static const String add_leave_type = "Leave Type*";
  static const String leave_prompts = "Select Leave Type";
  static const String lpId_prompts = "Select LP ID";
  static const String comments_prompt = "Comments*";
  static const String start_date_prompt = "Start Date*";
  static const String end_date_prompt = "End Date*";
  static const String select_leave_start_date = "Select Start Date";
  static const String select_leave_end_date = "Select End Date";
  static const String full_day = "Full Day";
  static const String half_day = "Half Day";

  // Book Leave Request Form Validation Messages
  static const String error_leave_type = "Please add valid leave type";
  static const String error_leave_start_date =
      "Please add valid leave start date";
  static const String error_leave_end_date = "Please add valid leave end date";
  static const String error_comments = "Please add valid comments";

  // Date formats
  static const String date_format_dd_MMM_yyyy = "dd MMM yyyy";
  static const String date_format_MMM_yyyy = "MMM yyyy";

  // Error messages
  static const String error_something_went_wrong =
      "Something went wrong. Please try again later.";
  static const String error_unauthorized =
      "Unauthorized access. Please log in again.";
  static const String error_no_internet =
      "No internet connection. Please check your network settings.";
  static const String error_timeout =
      "Request timeout. Please try again later.";
}
