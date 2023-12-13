import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/GetActiveEmployeeController.dart';
import '../custom_widgets/custom_app_bar.dart';
import '../utils/strings.dart';

class ActiveEmployeesScreen extends StatelessWidget {
  final GetActiveEmpController controller = Get.put(GetActiveEmpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      ),
      body: Obx(
            () => controller.employeeList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: controller.employeeList.length,
          itemBuilder: (context, index) {
            final employee = controller.employeeList[index];
            return ListTile(
              title: Text('${employee.firstName} ${employee.lastName}'),
              subtitle: Text(employee.workEmail),
              // Add other fields as needed
            );
          },
        ),
      ),
    );
  }
}
