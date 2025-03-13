
import '../../main_importants.dart';

class ContainerSearchWidget extends StatelessWidget {
  const ContainerSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      readOnly: true,
      onPressed: (){
        //LayoutCubit.get(context).changeBottomNav(LayoutCubit.pageIndex=2);
      },
      keyboardType: TextInputType.text,
      hintText:  "context.tr(LocaleKeys.searchWithBy3ly)",
      prefixIcon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset("AppImages.search"),
      ),
    );
  }
}
