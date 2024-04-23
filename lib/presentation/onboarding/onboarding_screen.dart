// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_animated_button/flutter_animated_button.dart';
// import 'package:onboarding/onboarding.dart';
//
// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnboardingScreen> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<OnboardingScreen> {
//   late Material materialButton;
//   late int index;
//   final onboardingPagesList = [
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 45.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset('assets/images/facebook.png',
//                     color: pageImageColor),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'SECURED BACKUP',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 45.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset('assets/images/twitter.png',
//                     color: pageImageColor),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'CHANGE AND RISE',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Give others access to any file or folders you choose',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 45.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset('assets/images/instagram.png',
//                     color: pageImageColor),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'EASY ACCESS',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Reach your files anytime from any devices anywhere',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     platform.setMethodCallHandler(_handleNativeMethodCall);
//     materialButton = _skipButton();
//     index = 0;
//   }
//
//   Material _skipButton({void Function(int)? setIndex}) {
//     return Material(
//       borderRadius: defaultSkipButtonBorderRadius,
//       color: defaultSkipButtonColor,
//       child: InkWell(
//         borderRadius: defaultSkipButtonBorderRadius,
//         onTap: () {
//           if (setIndex != null) {
//             index = 2;
//             setIndex(2);
//           }
//         },
//         child: const Padding(
//           padding: defaultSkipButtonPadding,
//           child: Text(
//             'Skip',
//             style: defaultSkipButtonTextStyle,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget get _signupButton {
//     return AnimatedButton(
//       height: 30,
//       width: 100,
//       text: 'SIGN UP',
//       isReverse: true,
//       selectedTextColor: Colors.black,
//       transitionType: TransitionType.LEFT_TO_RIGHT,
//       backgroundColor: Colors.black,
//       borderColor: Colors.white,
//       borderRadius: 50,
//       borderWidth: 2,
//       textStyle: defaultProceedButtonTextStyle,
//       onPress: () async {
//         Platform.isIOS ? cupertinoDatePicker(context) : materialDatePicker();
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: background,
//         body: Onboarding(
//           pages: onboardingPagesList,
//           onPageChange: (int pageIndex) {
//             index = pageIndex;
//           },
//           startPageIndex: 0,
//           footerBuilder: (context, dragDistance, pagesLength, setIndex) {
//             return DecoratedBox(
//               decoration: BoxDecoration(
//                 color: background,
//                 border: Border.all(
//                   width: 0.0,
//                   color: background,
//                 ),
//               ),
//               child: ColoredBox(
//                 color: background,
//                 child: Padding(
//                   padding: const EdgeInsets.all(45.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       CustomIndicator(
//                         netDragPercent: dragDistance,
//                         pagesLength: pagesLength,
//                         indicator: Indicator(
//                           indicatorDesign: IndicatorDesign.line(
//                             lineDesign: LineDesign(
//                               lineType: DesignType.line_uniform,
//                             ),
//                           ),
//                         ),
//                       ),
//                       index == pagesLength - 1
//                           ? _signupButton
//                           : _skipButton(setIndex: setIndex)
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ));
//   }
//
//   cupertinoDatePicker(ctx) {
//     var dateValue = "";
//     showCupertinoModalPopup(
//         context: context,
//         builder: (context) {
//           return Container(
//             color: Colors.white,
//             height: 300.0,
//             child: Column(
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     GestureDetector(
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Material(
//                           child: Text(
//                             "Cancel",
//                             style: TextStyle(fontSize: 12, color: Colors.blue),
//                           ),
//                         ),
//                       ),
//                       onTap: () => {Navigator.pop(context)},
//                     ),
//                     GestureDetector(
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Material(
//                           child: Text(
//                             "Done",
//                             style: TextStyle(fontSize: 12, color: Colors.blue),
//                           ),
//                         ),
//                       ),
//                       onTap: () async => {
//                         Navigator.pop(context),
//                         await platform.invokeMethod('dataResult', {
//                           'date': 1.0
//                         } // 'path' is the key here to be passed to Native side
//                             ),
//                       },
//                     ),
//                   ],
//                 ),
//                 Flexible(
//                   child: CupertinoDatePicker(
//                     initialDateTime: DateTime.now().add(const Duration(days: 7)),
//                     minimumDate: DateTime.now(),
//                     mode: CupertinoDatePickerMode.date,
//                     onDateTimeChanged: (date) async {
//                       dateValue = "${date.day}/${date.month}/${date.year}";
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }).then((value) => {
//       Navigator.pop(context),
//     });
//   }
//
//   Future<dynamic> _handleNativeMethodCall(MethodCall methodCall) async {
//     // do some processing
//     materialDatePicker();
//   }
//
//   materialDatePicker() {
//     return showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2019, 1),
//       lastDate: DateTime(2041, 12),
//     ).then((date) async {
//       await platform.invokeMethod('dataResult', {
//         'date': "${date?.day}/${date?.month}/${date?.year}"
//       } // 'path' is the key here to be passed to Native side
//           );
//       SystemNavigator.pop();
//       //do whatever you want
//     });
//   }
// }
//
// // Dart Code
// const platform = MethodChannel('APP_CHANNEL');
//
// // Kotlin Code
