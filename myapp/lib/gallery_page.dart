import 'package:flutter/material.dart';
import 'package:myapp/photo_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/photo_view_page.dart';

class GalleryPage extends StatelessWidget {
  GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery รูปภาพของฉัน'),
      ),
      body: GridView.builder(
        itemCount: photos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext context, int index) {
          final photo = photos[index];
          return GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (_) => PhotoViewPage(
            //         photos: photos,
            //         initialIndex: index,
            //       ),
            //     ),
            //   );
            // },
            child: CachedNetworkImage(
              imageUrl: photo.imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
