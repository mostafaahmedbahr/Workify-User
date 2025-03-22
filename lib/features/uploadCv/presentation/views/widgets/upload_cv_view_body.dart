  import 'package:workify_user/features/uploadCv/presentation/views/widgets/upload_cv_finish_button.dart';
import 'package:workify_user/features/uploadCv/presentation/views/widgets/upload_cv_image.dart';
import 'package:workify_user/features/uploadCv/presentation/views/widgets/upload_cv_main_container.dart';
import '../../../../../core/shared_widgets/linear_percent.dart';
import '../../../../../main_importants.dart';

class UploadCvViewBody extends StatelessWidget {
  const UploadCvViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
            LinearPercentWidget(
            percentText: "20.0%",
            percent: 0.2,
          ),
          CustomSizedBox(height: 40,),
          UploadCvMainContainer(),
          CustomSizedBox(height: 10,),
          UploadCvImage(),
          Spacer(),
          UploadCvFinishButton(),
          CustomSizedBox(height: 40,),
        ],
      ),
    );
  }
}
