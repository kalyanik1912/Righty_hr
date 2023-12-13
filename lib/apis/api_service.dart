import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rightly_hr_flutter/apis/unauthxceptions.dart';
import '../models/EmpDataBean.dart';
import '../utils/shared_preferences_helper.dart';
import '../utils/strings.dart';
import 'api_list.dart';

class ApiService {
  //Get user data by user email id
  static Future<EmpDataBean?> loginWithEmail(context, emailId) async {
    String token =
        await SharedPreferencesHelper.getStringPreference(Strings.access_token);
    String xTenantId =
        await SharedPreferencesHelper.getStringPreference(Strings.x_tenant_id);

    // Create a Map for query parameters
    final Map<String, String> queryParams = {
      'emailid': emailId,
    };

    var query = Uri.https(APIs.baseUrl, APIs.getEmpByEmailId, queryParams);

    final response = await http.get(query, headers: {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
      "x-tenant-id": xTenantId,
    });
    if (response.statusCode == 200) {
      print(response.body);
      return EmpDataBean.fromJson(json.decode(response.body));
    } else {
      if (response.statusCode == 401) {
        UnAuthExceptions.logOutUser(context, response.statusCode);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.reasonPhrase!)));
      }
      throw HttpException('Unexpected status code ${response.statusCode}:'
          ' ${response.reasonPhrase}');
    }
  }

/*  //User login
  static Future<EmpDataBean?> loginWithEmail(body, context) async {
    http.Response response;
    String xTenantId =
    await SharedPreferencesHelper.getStringPreference(Strings.x_tenant_id);
    try {
      response = await http.post(
        Uri.https(APIs.baseUrl, APIs.getEmpByEmailId),
        headers: {"Content-Type": "application/json", "x-tenant-id": xTenantId},
        body: jsonEncode(body),
      );
    } on SocketException {
      Utils.displayErrorTopFlushBar(
          "Unable to connect! Please check your internet connection", context);
      return null;
    }

    if (response.statusCode == 200) {
      return EmpDataBean.fromJson(json.decode(response.body));
    } else {
      if (response.statusCode == 401) {
        // UnAuthExceptions.logOutUser(context, response.statusCode);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.reasonPhrase!)));
      }
      throw HttpException('Unexpected status code ${response.statusCode}:'
          ' ${response.reasonPhrase}');
    }
  }*/
/*  static Future<ContactUsBean> contactForm(body, context) async {
    String token =
        await SharedPreferencesHelper.getStringPreference(Strings.access_token);
    String xTenantId =
        await SharedPreferencesHelper.getStringPreference(Strings.x_tenant_id);
    var query = Uri.https(APIs.baseUrl, APIs.addNewContactUs);
    final response = await http.post(query,
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
          "x-tenant-id": xTenantId
        },
        body: jsonEncode(body));
    if (response.statusCode == 200) {
      return ContactUsBean.fromJson(json.decode(response.body));
    } else {
      if (response.statusCode == 401) {
        UnAuthExceptions.logOutUser(context, response.statusCode);
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(response.reasonPhrase!)));
      }
      throw HttpException('Unexpected status code ${response.statusCode}:'
          ' ${response.reasonPhrase}');
    }
  }*/
}
