import 'package:flutter/material.dart';

import 'EmpInfoCard.dart';

class JobDetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Color(0xFFE5E3E3FF), // Replace with your background color
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Loading Job ProgressBar
            Visibility(
              visible: false,
              child: Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator(),),
            ),
            // CardView for No Internet
            Visibility(visible: false,
              child: Card(
                elevation: 2.0,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      const Text(
                        'Oops! No Internet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        'Network error',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Implement your try again action
                        },
                        child: Text('Try Again'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Include the Basic Info Card
            EmpInfoCard(),
            // CardView for Employment Type
            /*Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Employment Type',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.keyboard_arrow_down),
                          onPressed: () {
                            // Implement toggle action
                          },
                        ),
                      ],
                    ),

                    // Hidden content within Employment Type card
                    const Visibility(
                      visible: false, // Toggle this based on user interaction
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Job Type:'),
                              Text(' Replace with dynamic value'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Effective Date:'),
                              Text(' Replace with dynamic value'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Comments:'),
                              Text(' Replace with dynamic value'),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),*/
            const Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: ExpansionTile(

                title: Text("Employment Type",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
                children: [
                  Text("No employment details available"),
                  SizedBox(height: 5,)
                ],

              ),),
            const Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: ExpansionTile(

                title: Text("Job Details",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
                children: [
                  Text("No Job details available"),
                  SizedBox(height: 5,)
                ],

              ),),
            const Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: ExpansionTile(

                title: Text("My Assignments",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
                children: [
                  Text("No data available"),
                  SizedBox(height: 5,)
                ],

              ),),
            const Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: ExpansionTile(

                title: Text("Direct Reportees",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
                children: [
                  Text("No data available"),
                  SizedBox(height: 5,)
                ],

              ),),
            const Card(
              elevation: 2.0,
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: ExpansionTile(

                title: Text("Emergency Contact Details",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),),
                children: [
                  Text("No emergency contact details available"),
                  SizedBox(height: 5,)
                ],

              ),),

          ],
        ),
      ),
    );
  }
}
