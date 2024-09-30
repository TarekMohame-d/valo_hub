import 'dart:io';

import 'package:dio/dio.dart';

class DownloadImageUseCase {
  Future<void> downloadImage(String imageUrl) async {
    try {
      Dio dio = Dio();

      // Get the public Downloads directory
      final Directory downloadsDir = Directory('/storage/emulated/0/Downloads');
      if (!await downloadsDir.exists()) {
        throw Exception("Downloads directory not found");
      }

      // Extract file name from imageUrl
      final String fileName = imageUrl.split('/').last;

      // Full file path in the downloads folder
      final String filePath = '${downloadsDir.path}/$fileName';

      // Download the image and save it to the file path
      await dio.download(
        imageUrl,
        filePath,
        options: Options(
            responseType:
                ResponseType.bytes), // Ensure raw bytes are downloaded
      );

      print('Image downloaded successfully: $filePath');
    } catch (e) {
      print('Failed to download image: $e');
    }
  }
}
