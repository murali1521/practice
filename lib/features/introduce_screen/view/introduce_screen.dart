// import 'package:flutter/material.dart';
// import 'package:hiiiiiiii/utilis/image_constants.dart';


// class IntroduceScreen extends StatelessWidget {
//   const IntroduceScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       extendBodyBehindAppBar: true,
//       body: Container(
//         width: double.maxFinite,
//         height: double.maxFinite,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Colors.deepPurple, Colors.blueGrey],
//           ),
//         ),
//         child: SafeArea(
//           child: SizedBox(
//             width: double.maxFinite,
//             child: SingleChildScrollView(
//               child: Container(
//                 height: 806,
//                 child: Stack(
//                   alignment: Alignment.bottomCenter,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(40),
//                       child: Image.asset(
//                         ImageConstants.welcomeImage,
//                         height: 676,
//                         width: double.maxFinite,
//                         alignment: Alignment.topCenter,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     _buildInformationSection(context),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInformationSection(BuildContext context) {
//     // TODO: Implement this method
//     return ClipRect(
//       child: Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.all(26),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(40),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 10,
//               margin: EdgeInsets.only(left: 32),
//               child: SmoothPageIndicator(
//                 controller: PageController(),
//                 count: 3,
//                 effect: ExpandingDotsEffect(
//                   spacing: 14.67,
//                   activeDotColor: Theme.of(context).colorScheme.primary,
//                   dotColor: Colors.white,
//                   dotHeight: 10,
//                   dotWidth: 10,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }