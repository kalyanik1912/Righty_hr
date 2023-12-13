import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpensesTab extends StatefulWidget {
  const ExpensesTab({super.key});

  @override
  State<ExpensesTab> createState() => _ExpensesTabState();
}

class _ExpensesTabState extends State<ExpensesTab> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedExpenseType = 'Select Type'; // Initialize with a default value
  late DateTime selectedDate = DateTime.now();
  String amount = '';
  String description = '';
  late String attachmentPath;

  //DateTime selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _openExpenseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('New Expense Request'),
          content: Form(
            key: _formKey,
            child: Container(
              width: 400,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text("Expense Type *",style: TextStyle(fontSize: 12),),
                    const SizedBox(height: 2,),
                    DropdownButtonFormField<String>(
                      value: selectedExpenseType != '' ? selectedExpenseType : null, // Check for empty value
                      onChanged: (value) {
                        setState(() {
                          selectedExpenseType = value!;
                        });
                      },
                      items: <String>[
                        'Select Type', // Provide an initial non-empty value
                        'Food',
                        'Transportation',
                        'Housing',
                        'Entertainment',
                        'Other',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value, // Ensure values are unique
                          child: Text(value),
                        );
                      }).toList(),
                      decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Customize the border shape
                      ),contentPadding: const EdgeInsets.all(5.0)),
                    ),
                    const SizedBox(height: 20,),
                    const Text("Expense Date *",style: TextStyle(fontSize: 12),),
                    const SizedBox(height: 2,),
                    TextField(
                      readOnly: true,
                      controller: TextEditingController(
                          text: selectedDate != null
                              ? "${selectedDate.toLocal()}".split(' ')[0]
                              : ''),
                      decoration: InputDecoration(contentPadding: const EdgeInsets.all(5.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0), // Customize the border shape
                        ),
                        hintText: 'Select Date',
                        suffixIcon: InkWell(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: const Icon(Icons.calendar_today),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text("Amount *",style: TextStyle(fontSize: 12),),
                    const SizedBox(height: 2,),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          amount = value;
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: 'Enter Expense Amount',border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Customize the border shape
                      ),contentPadding: const EdgeInsets.all(5.0)),
                    ),
                    const SizedBox(height: 10,),
                    const Text("Description *",style: TextStyle(fontSize: 12),),
                    const SizedBox(height: 2,),
                    TextFormField(maxLines: 5,
                      onChanged: (value) {
                        setState(() {
                          description = value;
                        });
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(hintText: 'Description',border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Customize the border shape
                      ),contentPadding: const EdgeInsets.all(5.0)),
                    ),
                    const SizedBox(height: 20,),
                    const Text("Attachment * (Size Limit: 1MB)",style: TextStyle(fontSize: 12),),
                    const SizedBox(height: 2,),
                    ElevatedButton(
                      onPressed: () async {
                        FilePickerResult? result = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ['jpg'],
                        );

                        if (result != null) {
                          setState(() {
                            attachmentPath = result.files.single.path!;
                          });
                        }
                      },
                      child: const Text('Upload'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // You can submit the data here or perform other actions
                          print('Expense Type: $selectedExpenseType');
                          print('Expense Date: $selectedDate');
                          print('Amount: $amount');
                          print('Attachment Path: $attachmentPath');
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(

              title: Text("Total Expenses"),
              trailing: Text("₹ 0"),
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Customize the border shape
                    ),
                    labelText: "Search",
                    //hintText: "Search expenses",
                    prefixIcon: const Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    // Handle search logic here
                  },
                ),
              ),
              const SizedBox(width: 10), // Add spacing between the search box and "Add New Expense" text
              InkWell(
                onTap: () {
                  _openExpenseDialog(context);

                },
                child: const Text(
                  "+ Add New Expense",
                  style: TextStyle(
                    color: Colors.blue, // Customize the text color
                     // Underline the text
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const Text(
            "No expense requests available",
            style: TextStyle(
              color: Colors.black, // Customize the text color
              // Underline the text
            ),
          ),

        ],

      ),
    );
  }


}


