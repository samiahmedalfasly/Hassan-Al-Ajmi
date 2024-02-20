import 'package:flutter/material.dart';
import 'package:youtube_app/pages/youtube.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "حسن العجمي",
//       home: Youtube(),
//     );
//   }
// }


class MyApp extends StatelessWidget {
   MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      title: 'حسن العجمي',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Youtube(),
      },
    );
  }
}










// // import 'package:camera/camera.dart';

// Future<void> main() async {
//   // WidgetsFlutterBinding.ensureInitialized();
//   // final cameras = await availableCameras();
//   // final firstCamera = cameras.first;

//   runApp(
//     //  MyApp(camera: firstCamera,)
//      MyApp()
//   );
// }