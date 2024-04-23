// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class RatingScreen extends StatefulWidget {
//   const RatingScreen({super.key});
//
//   @override
//   State<RatingScreen> createState() => _RatingScreenState();
// }
//
// class _RatingScreenState extends State<RatingScreen> {
//
//   late double _rating;
//
//   double _userRating = 3.0;
//   int _ratingBarMode = 1;
//   double _initialRating = 2.0;
//   bool _isRTLMode = false;
//   bool _isVertical = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: _getAppBar(),
//       bottomNavigationBar: _getBottomBar(),
//       backgroundColor: Colors.white,
//       body: _getBody(),);
//   }
//
//   _getBody() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Center(child: SvgPicture.asset("assets/images/ic_rating.svg")),
//         const Padding(
//           padding: EdgeInsets.only(left: 24.0,right: 24,top: 20),
//           child: Text('On a scale of 1 to 5 stars, how would you rate the Zolve app?',
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
//         ),
//         const Padding(
//           padding: EdgeInsets.only(left: 24.0,right: 24,top: 27,bottom: 11),
//           child: Text('Tap on a star to rate!',
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff5c5c5c)),),
//         ),
//         RatingBar.builder(
//           initialRating: _initialRating,
//           minRating: 0,
//           direction: _isVertical ? Axis.vertical : Axis.horizontal,
//           allowHalfRating: true,
//           unratedColor: Colors.amber.withAlpha(50),
//           itemCount: 5,
//           itemSize: 50.0,
//           itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
//           itemBuilder: (context, _) => const Icon(
//             Icons.star,
//             color: Colors.deepOrangeAccent,
//           ),
//           onRatingUpdate: (rating) {
//             setState(() {
//               _rating = rating;
//             });
//           },
//           updateOnDrag: true,
//         )
//     ],);
//   }
//
//   _getAppBar() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       actions: const [Padding(
//       padding: EdgeInsets.all(20.0),
//       child: Icon(Icons.close),
//     )],);
//   }
//
//   _getBottomBar() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.deepOrangeAccent,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(4.0),
//           ),
//         ),
//         onPressed: () {},
//         child:
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text("Submit Feedback".toUpperCase(), style: const TextStyle(fontSize: 14, color: Colors.white)),
//         ),
//       ),
//     );
//   }
// }
