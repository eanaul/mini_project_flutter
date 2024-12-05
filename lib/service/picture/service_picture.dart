import 'package:dio/dio.dart';

class PictureService{
  final Dio _dio = Dio();

  Future<List<dynamic>> fetchPictures() async{
    try{
      final response = await _dio.get('https://picsum.photos/v2/list', queryParameters: {'limit': 5}); 
      return response.data;
    }catch(e){
      throw Exception('Gagal mengambil gambar: $e');
    }
  }

  Future<Map<String, dynamic>> fetchPictureDetail(String id) async{
    try{
      final response = await _dio.get('https://picsum.photos/id/$id/info');
      return response.data;
    }catch(e){
      throw Exception('Gagal mengambil gambar: $e');
    }
  }
}