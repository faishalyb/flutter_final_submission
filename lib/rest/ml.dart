import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class MLService {
  Future<Map<String, dynamic>> detectTrash(File inputImageFile) async {
    try {
      // Kirim gambar ke API menggunakan form-data
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('https://ml-api-ilhkkpshpa-uc.a.run.app/predict'),
      );
      request.files.add(
        await http.MultipartFile.fromPath(
          'image',
          inputImageFile.path,
        ),
      );

      // Kirim permintaan dan terima respons
      var response = await request.send();
      var responseData = await response.stream.toBytes();
      var responseString = String.fromCharCodes(responseData);

      // Handle response
      if (response.statusCode == 200) {
        // Respons sukses, kembalikan data JSON
        return jsonDecode(responseString);
      } else {
        // Respons gagal, lempar error
        throw Exception('Failed to detect trash. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // Tangani kesalahan koneksi atau lainnya
      throw Exception('Error: $e');
    }
  }
}