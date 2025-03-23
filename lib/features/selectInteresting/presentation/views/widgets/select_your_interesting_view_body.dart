import '../../../../../main_importants.dart';
import 'interesting_next_button.dart';
import 'jobs_list.dart';
import 'linear_progress.dart';

class SelectYourInterestingViewBody extends StatelessWidget {
  const SelectYourInterestingViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          LinearProgress(),
          CustomSizedBox(height: 20,),
          JobsList(),
          InterestingNextButton(),
          CustomSizedBox(height: 40,),
        ],
      ),
    );
  }
}