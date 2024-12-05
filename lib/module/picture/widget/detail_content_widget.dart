import 'package:flutter/material.dart';

class DetailPictureWidget extends StatelessWidget {
  final Map<String, dynamic> picture;

  const DetailPictureWidget({
    Key? key,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Gambar utama
          ClipRRect(
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
            child: Image.network(
              picture['download_url'] ?? '',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child; // Jika gambar selesai dimuat
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return const Center(
                  child: Icon(Icons.error, color: Colors.red), // Menampilkan ikon error jika gagal
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          // Informasi Pengarang
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Taken by: ${picture['author']}',
                style: const TextStyle(fontSize: 16),
                
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
