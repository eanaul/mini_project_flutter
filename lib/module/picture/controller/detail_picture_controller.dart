import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class DetailPictureController extends GetxController{
  final PictureService _service = PictureService();

  var pictureDetail = {}.obs;
  var isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    fetchPictureDetail(Get.arguments['id']);
  }

  void fetchPictureDetail(String id) async {
    try{
      isLoading(true);
      pictureDetail.value = await _service.fetchPictureDetail(id);
    }finally{
      isLoading(false);
    }
  }
}