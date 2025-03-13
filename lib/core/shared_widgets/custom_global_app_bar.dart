// import 'package:by3ly_app/core/utils/app_images/app_images.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
//
// class CustomGlobalAppbarWidget extends StatelessWidget {
//   const CustomGlobalAppbarWidget({super.key,  this.arrowBackOrNot = false});
//   final bool arrowBackOrNot;
//   @override
//   Widget build(BuildContext context) {
//     Locale locale = EasyLocalization.of(context)!.locale;
//     return Stack(
//       children: [
//         Image.asset("assets/images/image.png",
//           fit: BoxFit.cover,
//           width: double.infinity,),
//         if(arrowBackOrNot)
//         IconButton(
//           onPressed: (){
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_outlined,
//             color: Colors.white,),
//         ),
//
//         Padding(
//           padding:
//         locale.languageCode == 'ar'?
//           const EdgeInsets.only(top: 30,right: 10) :
//           EdgeInsets.only(top: 30,left: MediaQuery.of(context).size.width*0.48),
//           child: Image.asset(AppImages.logo2,
//             width: 200,),
//         ),
//       ],
//     );
//   }
// }
