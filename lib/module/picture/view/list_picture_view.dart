import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListPictureController>();

    return Scaffold(
      appBar: AppBar(title: const Text('List Photo')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const LoadingWidget(message: "Mengambil Data Gambar...");
        }

        return ListPictureWidget(
          key: Key('list_picture_widget_${controller.pictures.hashCode}'), // Unique Key
          pictures: controller.pictures,
          onPictureTap: (picture) {
            Get.to(DetailPictureView(), arguments: picture);
          },
        );
      }),
    );
  }
}

