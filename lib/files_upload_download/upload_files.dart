/*
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:rightly_hr/utils/utilities.dart';
import '../../utils/shared_preferences_helper.dart';
import '../../utils/strings.dart';

class FileUpload {
  //Pick and upload file
  static pickAndgetFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    PlatformFile file;
    try {
      file = result!.files.first;
      UploadRes data = await uploadFile(file.name, file.path, file.extension);
      if (data.type == Strings.success) {
        return data.data;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static convertBytesToMB(bytes) {
    //converting to Mebibytes. If need to convert to mega bites use 1024 instead 1000;
    return bytes / 1000 / 1000;
  }

  static pickPDFs(context) async {
    int limitinMB = 10;
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    PlatformFile file;
    try {
      file = result!.files.first;
      if (convertBytesToMB(file.size) > limitinMB) {
        Utils.displayErrorTopFlushBar(
            "Please upload a file less than 10 MB", context);
        return null;
      } else {
        UploadRes data = await uploadFile(file.name, file.path, file.extension);
        if (data.type == Strings.success) {
          return data;
        } else {
          return null;
        }
      }
    } catch (e) {
      return null;
    }
  }

  //Upload picked file to the cloud storage to get the url
  static Future<UploadRes> uploadFile(name, path, type) async {
    String token =
        await SharedPreferencesHelper.getStringPreference(Strings.access_token);
    String xTenantId =
        await SharedPreferencesHelper.getStringPreference(Strings.x_tenant_id);
    var uri = Uri.https(Strings.baseUrl, APIs.uploadFile);
    final Map<String, String> header = {
      "Content-Type": "multipart/form-data",
      'Authorization': 'Bearer $token',
      "x-tenant-id": xTenantId,
    };
    var request = http.MultipartRequest("POST", uri);
    request.headers.addAll(header);
    request.files.add((await http.MultipartFile.fromPath(name, path)));
    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    if (response.statusCode == 200) {
      return UploadRes.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}

//Upload responce model
class UploadRes {
  final String type;
  final String message;
  final String data;
  final String size;
  final String originalFilename;

  UploadRes({
    required this.type,
    required this.message,
    required this.data,
    required this.size,
    required this.originalFilename,
  });

  factory UploadRes.fromJson(Map<String, dynamic> parsedJson) {
    return UploadRes(
      type: parsedJson['type'] ?? "",
      message: parsedJson['message'] ?? "",
      data: parsedJson['data'] ?? "",
      size: parsedJson['size'] ?? "",
      originalFilename: parsedJson['originalFilename'] ?? "",
    );
  }
}
*/
