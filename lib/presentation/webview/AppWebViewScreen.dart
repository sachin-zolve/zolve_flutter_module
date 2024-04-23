// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class AppWebViewScreen extends StatefulWidget {
//   final String url;
//   const AppWebViewScreen({super.key,required this.url});
//
//   @override
//   State<AppWebViewScreen> createState() => _AppWebViewScreenState();
// }
//
// class _AppWebViewScreenState extends State<AppWebViewScreen> {
//
//   bool isLoading = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//     appBar: _appBarWidget(),
//       body: SizedBox(height: double.infinity,
//       width: double.infinity,
//         child: Stack(
//           children: [
//             WebView(
//               initialUrl: widget.url,
//               backgroundColor: Colors.white,
//               onWebViewCreated: (controller){
//                 controller.clearCache();
//                 CookieManager().clearCookies();
//               },
//               javascriptMode: JavascriptMode.unrestricted,
//               onPageFinished: (finishUrl){
//                 print("ASDasdasd$finishUrl");
//                 setState(() {
//                   isLoading = false;
//                 });
//               },
//               onWebResourceError: (error){
//                 print("ASDasdasd");
//                 SystemNavigator.pop();
//               },
//             ),
//             isLoading? const Center(child: CircularProgressIndicator(color: Colors.black,)): const Stack()
//           ],
//         ),
//       ),
//     );
//   }
//
//   _appBarWidget() {
//     return AppBar(
//       leading: InkWell(
//           onTap: () {
//             SystemNavigator.pop();
//           },
//           child: const Icon(Icons.arrow_back_ios,color: Colors.black,)),
//     );
//   }
// }
