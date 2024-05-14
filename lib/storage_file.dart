
import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: Text('Profile'),
        ),
        body: Center(
          child: ProfileCard(
            name: 'Md Arman',


            imageUrl: 'https://scontent.fcgp17-1.fna.fbcdn.net/v/t39.30808-1/326961886_671575251427035_8870278638884093958_n.jpg?stp=dst-jpg_s200x200&_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG8y0sf1rBejOqOPSzcPfrITEXeqFubi11MRd6oW5uLXevNRMbw4nNMR0GnyrtUfMG8E6HL1MPqP0EpfAxakZHk&_nc_ohc=ahwaHVwDqZQQ7kNvgH8vDCe&_nc_ht=scontent.fcgp17-1.fna&oh=00_AfDh7yRRvCL2Z6TWqMtT1T6g3DF8x3qH2DHFYD-JBrcp8g&oe=6636F807',
            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan quam quis augue lacinia, sit amet vehicula dui aliquet. Integer nec fermentum quam.',
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String content;

  ProfileCard({required this.name, required this.imageUrl, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 20),
          Text(
            name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}





// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   final List<String> imageList = [
// {'url': 'images/img_1.jpg', 'title': 'Mood'},
// {'url': 'images/img_4.jpg', 'title': 'Animals'},
// {'url': 'images/img_5.jpg', 'title': 'Nature'},
// {'url': 'images/img_6.jpg', 'title': 'Travel'},
// {'url': 'images/img_7.jpg', 'title': 'Food'},
// {'url': 'images/img_8.jpg', 'title': 'Fashion'},
// //   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Photo Gallery'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
//           onPressed: () {
//             // Implement navigation to home or previous screen
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.more_vert,color: Colors.white,),
//             onPressed: () {
//               // Do something when more_vert icon is pressed
//             },
//
//           ),
//         ],
//         backgroundColor: Colors.green, // Set the background color of the app bar
//       ),
//       body: GridView.builder(
//         itemCount: imageList.length, // Number of images
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // Number of columns in the grid
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           // Return a grid item with an image
//           return GestureDetector(
//             onTap: () {
//               // Navigate to another screen when an image is tapped
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ImageDetailsScreen(
//                     imageUrl: imageList[index],
//                     imageIndex: index,
//                   ),
//                 ),
//               );
//             },
//             child: Container(
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//                 color: Colors.grey[200],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(
//                   imageList[index],
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ImageDetailsScreen extends StatelessWidget {
//   final String imageUrl;
//   final int imageIndex;
//
//   ImageDetailsScreen({required this.imageUrl, required this.imageIndex});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Photo:${imageIndex + 1} Details', style: TextStyle(color: Colors.white),),
//         backgroundColor: Colors.green, // Set the background color of the app bar
//       ),
//       body: RotatedBox(
//         quarterTurns: MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 0,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 child: Container(
//                   margin: EdgeInsets.all(16),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: Image.network(
//                       imageUrl,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Image Description',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       'This is a placeholder description for the image. Add your content here.',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                     SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Implement "Read More" functionality
//                       },
//                       child: Text('Read More', style: TextStyle(backgroundColor: Colors.green, color: Colors.white, ),),
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Suggestions',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     // Suggestions for other images
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: List.generate(
//                           2,
//                               (index) => GestureDetector(
//                             onTap: () {
//                               // Navigate to the suggested image
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => ImageDetailsScreen(
//                                     imageUrl: imageUrl,
//                                     imageIndex: index,
//                                   ),
//                                 ),
//                               );
//                             },
//                             child: Container(
//                               margin: EdgeInsets.symmetric(horizontal: 8),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(12),
//                                 child: Image.network(
//                                   imageUrl,
//                                   fit: BoxFit.cover,
//                                   width: 100,
//                                   height: 100,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//







// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   final List<String> imageList = [
//     'images/img_1.jpg',
//     'images/img_4.jpg',
//     'images/img_5.jpg',
//     'images/img_6.jpg',
//     'images/img_7.jpg',
//     'images/img_8.jpg'
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Photo Gallery'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             // Implement navigation to home or previous screen
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             onPressed: () {
//               // Do something when more_vert icon is pressed
//             },
//           ),
//         ],
//         backgroundColor: Colors.green, // Set the background color of the app bar
//       ),
//       body: GridView.builder(
//         itemCount: imageList.length, // Number of images
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2, // Number of columns in the grid
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           // Return a grid item with an image
//           return GestureDetector(
//             onTap: () {
//               // Navigate to another screen when an image is tapped
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ImageDetailsScreen(
//                     imageUrl: imageList[index],
//                   ),
//                 ),
//               );
//             },
//             child: Container(
//               margin: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//                 color: Colors.grey[200],
//               ),
//               child: Image.network(
//                 imageList[index],
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ImageDetailsScreen extends StatelessWidget {
//   final String imageUrl;
//
//   ImageDetailsScreen({required this.imageUrl});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Details'),
//         backgroundColor: Colors.green, // Set the background color of the app bar
//       ),
//       body: RotatedBox(
//         quarterTurns: MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 0,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.network(
//                 imageUrl,
//                 fit: BoxFit.cover,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Image Description',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     Text(
//                       'This is a placeholder description for the image. Add your content here.',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                     SizedBox(height: 16),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Implement "Read More" functionality
//                       },
//                       child: Text('Read More'),
//                     ),
//                     SizedBox(height: 16),
//                     Text(
//                       'Suggestions',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8),
//                     // Suggestions for other images
//                     ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: 3, // Number of suggested images
//                       itemBuilder: (BuildContext context, int index) {
//                         return ListTile(
//                           title: Text('Suggested Image ${index + 1}'),
//                           onTap: () {
//                             // Navigate to the suggested image
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => ImageDetailsScreen(
//                                   imageUrl: imageUrl, // Use the same image URL for now
//                                 ),
//                               ),
//                             );
//                           },
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//






//////Will be edited
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   final List<String> imageUrls = [
//     'images/img_1.jpg',
//     'images/img_4.jpg',
//     'images/img_5.jpg',
//     'images/img_6.jpg',
//     'images/img_7.jpg',
//     'images/img_8.jpg',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Photo Gallary', style: TextStyle(color: Colors.white),),
//         titleSpacing: 0,
//         centerTitle: true,
//         toolbarHeight: 98,
//         toolbarOpacity: 1,
//         elevation: 0,
//
//         backgroundColor: Colors.green,
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.more_vert , size: 36, color: Colors.white70,))
//         ],
//       ),
//       body: GridView.builder(
//         itemCount: imageUrls.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 5,
//           mainAxisSpacing: 5,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ImageDetailPage(imageUrl: imageUrls[index]),
//                 ),
//               );
//             },
//             child: Image.asset(imageUrls[index], fit: BoxFit.cover,
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ImageDetailPage extends StatelessWidget {
//   final String imageUrl;
//
//   ImageDetailPage({required this.imageUrl});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Detail'),
//       ),
//       body: Center(
//         child: Image.asset(imageUrl),
//
//       ),
//     );
//   }
// }
//



// /////Practice //
// import 'package:flutter/material.dart';
// //
// // import 'package:fluttericon/typicons_icons.dart';
// // import 'package:fluttericon/fontelico_icons.dart';
// // import 'package:fluttericon/linecons_icons.dart';
// //
// // final myIcons = const <Widget>[
// //   const Icon(Typicons.attention),
// //   const Icon(Fontelico.emo_wink),
// //   const Icon(Linecons.globe),
// // ];
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Assignment_1',
//         home: Home()
//     );
//   }
//
// }
//
// class Home extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Photo Gallary', style: TextStyle(color: Colors.white),),
//         titleSpacing: 0,
//         centerTitle: true,
//         toolbarHeight: 98,
//         toolbarOpacity: 1,
//         elevation: 0,
//
//         backgroundColor: Colors.green,
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
//           IconButton(onPressed: (){}, icon: Icon(Icons.account_circle , size: 44, color: Colors.white70,))
//         ],
//       ),
//       body: Center()
//     );
//   }
//
// }
//



