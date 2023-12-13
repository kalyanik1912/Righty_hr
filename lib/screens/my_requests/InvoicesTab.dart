import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InvoicesTab extends StatefulWidget {
  const InvoicesTab({super.key});

  @override
  State<InvoicesTab> createState() => _InvoicesTabState();
}

class _InvoicesTabState extends State<InvoicesTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: ListTile(

              title: Text("Total Invoice amount"),
              trailing: Text("₹ 0"),
            ),
          ),
          SizedBox(height: 15,),
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
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                  },
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  // Handle the "Add New Expense" action here
                },
                child: const Text(
                  "+ Add New Invoice",
                  style: TextStyle(
                    color: Colors.blue,
                    // Underline the text
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          const Text(
            "No Invoice requests available",
            style: TextStyle(
              color: Colors.black,

            ),
          ),

        ],

      ),
    );
  }
}
