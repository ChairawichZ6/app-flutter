// import 'package:flutter/material.dart';
// import 'package:myapp/photo.dart';

// class PhotoViewPage extends StatelessWidget {
//   final List<Photo> photos;
//   final int initialIndex;

//   const PhotoViewPage({
//     required this.photos,
//     required this.initialIndex,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Photo View '),
//       ),
//       body: PageView.builder(
//         itemCount: photos.length,
//         controller: PageController(initialPage: initialIndex),
//         itemBuilder: (BuildContext context, int index) {
//           final photo = photos[index];
//           return Center(
//             child: Image.network(photo.imageUrl),
//           );
//         },
//       ),
//     );
//   }
// }
