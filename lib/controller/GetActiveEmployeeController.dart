import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/GetActiveEmpData.dart';

class GetActiveEmpController extends GetxController {
  RxList<GetActiveEmpData> employeeList = <GetActiveEmpData>[].obs;
  final String apiUrl = 'https://snadqaapi.onpremise.snadhr.com/api/Register/getAlldataWithDirectreportees';
  final String bearerToken = 'eyJ0eXAiOiJKV1QiLCJub25jZSI6ImJoNy1fQ1p1WFFOcEtvMnZscTUtcmNYR3lJcnlvM25rcTVBZGlqc0cxTmMiLCJhbGciOiJSUzI1NiIsIng1dCI6IlQxU3QtZExUdnlXUmd4Ql82NzZ1OGtyWFMtSSIsImtpZCI6IlQxU3QtZExUdnlXUmd4Ql82NzZ1OGtyWFMtSSJ9.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTAwMDAtYzAwMC0wMDAwMDAwMDAwMDAiLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC8wY2MxYmFjNC1iZDRmLTQ5OTQtOGNmOS0yZDU0NGMwOWQ3ODEvIiwiaWF0IjoxNzAyMjc4MTczLCJuYmYiOjE3MDIyNzgxNzMsImV4cCI6MTcwMjI4MzMxNCwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IkFWUUFxLzhWQUFBQUhuVmt5R1pqbS8wSjVWczh4Y0xoanNlSE9GUElDbWpTOEVyd2pZWGliYklBc0l0UWNobFVKQlk3M1RhN0NMbHI2aURtMERaQVBoYTRhTEZBN25mWlhCR05oRW52eEtwMzBUYzVWS05vU09VPSIsImFtciI6WyJwd2QiLCJtZmEiXSwiYXBwX2Rpc3BsYXluYW1lIjoiSFJNUy1TTkFELVJVTlRJTUUiLCJhcHBpZCI6IjlhMDlkY2ZiLWEyMmYtNGZkZi1hMDE0LTM4OTkwZTU1OGQ4MCIsImFwcGlkYWNyIjoiMCIsImZhbWlseV9uYW1lIjoiR3VtcGVuYSIsImdpdmVuX25hbWUiOiJKYWdhZGVlc2giLCJpZHR5cCI6InVzZXIiLCJpcGFkZHIiOiI0OS4yNDkuMTYxLjEwIiwibmFtZSI6IkphZ2FkZWVzaCBHdW1wZW5hIiwib2lkIjoiYThmYjcwZGUtODg5Yi00YTI3LTk5NDAtYmFiMDZhMTE1NTFmIiwib25wcmVt'; // Replace with your actual Bearer token
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {'Authorization': 'Bearer $bearerToken'},
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      employeeList.assignAll(data.map((e) => GetActiveEmpData.fromJson(e)).toList());
    } else {
      print("response"+response.body.toString());
      //throw Exception('Failed to load data' +response.body);
    }
  }
}
