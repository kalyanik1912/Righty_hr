import 'dart:io';
import 'dart:math';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:android_path_provider/android_path_provider.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:intl/intl.dart';

import '../utils/utilities.dart';

//Download files from url to the device downloads folder using dio package
class DownloadFiles {
  static Future download(List files, String originalFileName, context) async {
    late String _localPath;
    final Dio _dio = Dio();
    var permission = await _checkPermission();

    if (permission) {
      _localPath = (await _findLocalPath())!;
      final savedDir = Directory(_localPath);
      bool hasExisted = await savedDir.exists();
      if (!hasExisted) {
        savedDir.create();
      }
      List<Future> tasks = [];
      for (int i = 0; i < files.length; i++) {
        var fileName = originalFileName.split('.').first.toString();
        var fileType = originalFileName.split('.').last.toString();
        var formattedDate =
            // DateTime.now().millisecondsSinceEpoch.toString();
            DateFormat("E d MMM yyyy HH mm ss").format(DateTime.now());

        var completeFileName =
            fileName + formattedDate.toString() + "." + fileType;
        var tempPath = path.join(savedDir.path, completeFileName
            // DateTime.now().millisecondsSinceEpoch.toString() + '.pdf'
            );
        tasks.add(_dio.download(files[0], tempPath,
            onReceiveProgress: (received, total) {
          if (total != -1) {
            if ((received / total * 100) == 100) {
              Utils.displaySuccessTopFlushBar(
                  "Download completed for " + completeFileName, context);
            }
          }
        }));
      }

      Utils.displaySuccessTopFlushBar("File download started", context);
      var multipleRes = Future.wait(tasks);
      multipleRes.then((value) => {print(value)});

      // Utils.displayToastMessage('Files downloaded successfully');
      // print("Doc Size" + getFileSize('file', 2).toString());
      return true;
      // print();
    } else {
      Utils.displayErrorTopFlushBar("Please give storage permission", context);
      return false;
    }
  }

  //Checking storage permission before downloading the file
  static _checkPermission() async {
    if (Platform.isIOS) return true;

    final status = await Permission.storage.status;
    if (status != PermissionStatus.granted) {
      final result = await Permission.storage.request();
      if (result == PermissionStatus.granted) {
        return true;
      }
    } else {
      return true;
    }
  }

  //Getting the downloads folder path of the device
  static _findLocalPath() async {
    String? externalStorageDirPath;
    if (Platform.isAndroid) {
      try {
        externalStorageDirPath = await AndroidPathProvider.downloadsPath;
      } catch (e) {
        final directory = await getExternalStorageDirectory();
        externalStorageDirPath = directory?.path;
      }
    } else if (Platform.isIOS) {
      externalStorageDirPath =
          (await getApplicationDocumentsDirectory()).absolute.path;
    }
    return externalStorageDirPath;
  }

  static getFileSize(String filepath, int decimals) async {
    var file = File(filepath);
    int bytes = await file.length();
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return ('Size: ' + (bytes / pow(1024, i)).toStringAsFixed(decimals)) +
        ' ' +
        suffixes[i];
  }
}
