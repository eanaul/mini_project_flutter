import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureController extends GetxController{
  final PictureService _service = PictureService();

  var pictures = <dynamic>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPictures();
  }

  void fetchPictures() async {
    try{
      isLoading(true);
      pictures.value = await _service.fetchPictures();
    }finally{
      isLoading(false);
    }
  }
}