


import '../../../main_importants.dart';

class NewToast
 {

   static showNewSuccessToast({
     required String msg,
     required BuildContext context,
   }) =>
       CherryToast.success(
         width: MediaQuery.of(context).size.width*0.8,
         title:  Text(msg, style: const TextStyle(color: AppColors.blackColor)),
       ).show(context);


   static showNewErrorToast({
     required String msg,
     required BuildContext context,
   }) =>
       CherryToast.error(
         width: MediaQuery.of(context).size.width*0.8,
         title:  Text(msg, style: const TextStyle(color: AppColors.blackColor)),
       ).show(context);
 }

