// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:flutter_animated_button/flutter_animated_button.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:test_module/presentation/onboarding/onboarding_screen.dart';
// import 'package:test_module/presentation/screen_one.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({required Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   //Animation
//   late Animation<double> backgroundAnimation;
//   late Animation<double> bubbleAnimation;
//
//   //Animation Controller
//   late AnimationController bubbleController;
//   late AnimationController _backgroundController;
//
//   // list of bubble widgets shown on screen
//   final List<Widget> bubbleWidgets = [];
//
//   // flag to check if the bubbles are already present or not.
//   bool areBubblesAdded = false;
//
//   //
//   // Animatable<Color> backgroundDark = TweenSequence<Color>([
//   //   TweenSequenceItem(
//   //     weight: 0.5,
//   //     tween: ColorTween(
//   //       begin: Colors.blue[800],
//   //       end: Colors.pink[800],
//   //     ),
//   //   ),
//   //   TweenSequenceItem(
//   //     weight: 0.5,
//   //     tween: ColorTween(
//   //       begin: Colors.pink[800],
//   //       end: Colors.blue[800],
//   //     ),
//   //   ),
//   // ]);
//   // Animatable<Color> backgroundNormal = TweenSequence<Color>([
//   //   TweenSequenceItem(
//   //     weight: 0.5,
//   //     tween: ColorTween(
//   //       begin: Colors.blue[500],
//   //       end: Colors.pink[500],
//   //     ),
//   //   ),
//   //   TweenSequenceItem(
//   //     weight: 0.5,
//   //     tween: ColorTween(
//   //       begin: Colors.pink[500],
//   //       end: Colors.blue[500],
//   //     ),
//   //   ),
//   // ]);
//   // Animatable<Color> backgroundLight = TweenSequence<Color>([
//   //   TweenSequenceItem(
//   //     weight: 0.5,
//   //     tween: ColorTween(
//   //       begin: Colors.blue[200],
//   //       end: Colors.pink[200],
//   //     ),
//   //   ),
//   //   TweenSequenceItem(
//   //     weight: 0.5,
//   //     tween: ColorTween(
//   //       begin: Colors.pink[200],
//   //       end: Colors.blue[200],
//   //     ),
//   //   ),
//   // ]);
//
//   AlignmentTween alignmentTop =
//       AlignmentTween(begin: Alignment.topRight, end: Alignment.topLeft);
//   AlignmentTween alignmentBottom =
//       AlignmentTween(begin: Alignment.bottomRight, end: Alignment.bottomLeft);
//
//   @override
//   void initState() {
//     super.initState();
//     _backgroundController = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     )..repeat();
//     bubbleController = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );
//     backgroundAnimation =
//         CurvedAnimation(parent: _backgroundController, curve: Curves.easeIn)
//           ..addStatusListener((status) {
//             if (status == AnimationStatus.completed) {
//               setState(() {
//                 _backgroundController.forward(from: 0);
//               });
//             }
//             if (status == AnimationStatus.dismissed) {
//               setState(() {
//                 _backgroundController.forward(from: 0);
//               });
//             }
//           });
//
//     bubbleAnimation = CurvedAnimation(
//         parent: bubbleController, curve: Curves.easeIn)
//       ..addListener(() {})
//       ..addStatusListener((status) {
//         if (status == AnimationStatus.completed) {
//           setState(() {
//             addBubbles(animation: bubbleAnimation, topPos: -1.001, bubbles: 2);
//             bubbleController.reverse();
//           });
//         }
//         if (status == AnimationStatus.dismissed) {
//           setState(() {
//             addBubbles(animation: bubbleAnimation, topPos: -1.001, bubbles: 2);
//             bubbleController.forward();
//           });
//         }
//       });
//
//     bubbleController.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // Add below to add bubbles intially.
//     if (!areBubblesAdded) {
//       addBubbles(animation: bubbleAnimation);
//     }
//     return AnimatedBuilder(
//       animation: backgroundAnimation,
//       builder: (context, child) {
//         return Scaffold(
//           body: Stack(
//             children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.height,
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: alignmentTop.evaluate(backgroundAnimation),
//                         end: alignmentBottom.evaluate(backgroundAnimation),
//                         colors: const [
//                           Colors.black54,
//                           Colors.black,
//                         ],
//                       ),
//                     ),
//                   ),
//                 ] +
//                 bubbleWidgets +
//                 [
//                   Positioned(
//                     bottom: 30,
//                     top: 0,
//                     left: 100,
//                     right: 100,
//                     child: SvgPicture.network(
//                         'https://www.zolveimages.zolve.com/website/images/logo_dark_bg.svg'),
//                   )
//                 ] +
//                 [
//                   Positioned(
//                     bottom: 40,
//                     left: 20,
//                     right: 20,
//                     child: AnimatedButton(
//                       height: 70,
//                       width: double.infinity,
//                       text: 'Let\'\s Get Started',
//                       isReverse: true,
//                       selectedTextColor: Colors.black,
//                       transitionType: TransitionType.LEFT_TO_RIGHT,
//                       backgroundColor: Colors.black,
//                       borderColor: Colors.white,
//                       borderRadius: 50,
//                       borderWidth: 2,
//                       onPress: () {
//                         Future.delayed(
//                           const Duration(milliseconds: 600),
//                           () {
//                             Navigator.pushAndRemoveUntil(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const OnboardingScreen()),
//                                 (Route<dynamic> route) => false);
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     bubbleController.dispose();
//     _backgroundController.dispose();
//     super.dispose();
//   }
//
//   void addBubbles({animation, topPos = 0, leftPos = 0, bubbles = 15}) {
//     for (var i = 0; i < bubbles; i++) {
//       var range = Random();
//       var minSize = range.nextInt(30).toDouble();
//       var maxSize = range.nextInt(30).toDouble();
//       var left = leftPos == 0
//           ? range.nextInt(MediaQuery.of(context).size.width.toInt()).toDouble()
//           : leftPos;
//       var top = topPos == 0
//           ? range.nextInt(MediaQuery.of(context).size.height.toInt()).toDouble()
//           : topPos;
//
//       var bubble = Positioned(
//           left: left,
//           top: top,
//           child: AnimatedBubble(
//               key: widget.key,
//               animationDouble: animation,
//               startSize: minSize,
//               endSize: maxSize));
//
//       setState(() {
//         areBubblesAdded = true;
//         bubbleWidgets.add(bubble);
//       });
//     }
//   }
// }
//
// class AnimatedBubble extends AnimatedWidget {
//   // A 4-Dimensional matrix to transform a bubble
//   var transform = Matrix4.identity();
//
//   // Start size of the bubble
//   double startSize;
//
//   //End size of the bubble
//   double endSize;
//
//   Animation<double> animationDouble;
//
//   AnimatedBubble(
//       {required Key? key,
//       required this.animationDouble,
//       required this.endSize,
//       required this.startSize})
//       : super(key: key, listenable: animationDouble);
//
//   @override
//   Widget build(BuildContext context) {
//     final _sizeTween = Tween<double>(begin: startSize, end: endSize);
//
//     transform.translate(0.0, 0.5, 0.0);
//
//     return Opacity(
//       opacity: 0.4,
//       child: Transform(
//         transform: transform,
//         child: Container(
//           decoration:
//               BoxDecoration(color: Colors.white, shape: BoxShape.circle),
//           height: _sizeTween.evaluate(animationDouble),
//           //_sizeTween.evaluate(animation),
//           width: _sizeTween
//               .evaluate(animationDouble), //_sizeTween.evaluate(animation),
//         ),
//       ),
//     );
//   }
// }
