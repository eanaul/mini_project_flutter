import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class PictureBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<ListPictureController>(ListPictureController());
    Get.put<DetailPictureController>(DetailPictureController());
  }
}