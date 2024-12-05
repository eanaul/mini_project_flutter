import 'package:get/get.dart';
import 'package:mini_project/core.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.PHOTOS;

  static final routes = [
    GetPage(
      name: Routes.PHOTOS, 
      page: () => ListPictureView(),
      binding: PictureBinding()
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailPictureView(),
      binding: PictureBinding()
    ),
  ];
}