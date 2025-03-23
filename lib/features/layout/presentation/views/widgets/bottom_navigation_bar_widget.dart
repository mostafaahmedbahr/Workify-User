import 'package:easy_localization/easy_localization.dart';
import '../../../../../main_importants.dart';
import '../../view_model/layout_cubit.dart';
import '../../view_model/layout_states.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<LayoutCubit, LayoutStates>(
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex:  LayoutCubit.pageIndex,
            onTap: (index) {
              LayoutCubit.get(context).changeBottomNav(index,context);
            },
            selectedItemColor: AppColors.mainGreenColor,
            unselectedItemColor: AppColors.greyColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgImages.home,
                  colorFilter: const ColorFilter.mode(
                      AppColors.mainGreenColor, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset(
                  SvgImages.home,
                  colorFilter: const ColorFilter.mode(AppColors.greyColor4,
                      BlendMode.srcIn),
                ),
                label: context.tr(LocaleKeys.home),

              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgImages.community,
                  colorFilter: const ColorFilter.mode(
                      AppColors.mainGreenColor, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset(
                  SvgImages.community,
                  colorFilter: const ColorFilter.mode(AppColors.greyColor4, BlendMode.srcIn),
                ),
                label:context.tr(LocaleKeys.community),
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgImages.applied,
                  colorFilter: const ColorFilter.mode(AppColors.mainGreenColor, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset(
                  SvgImages.applied,
                  colorFilter: const ColorFilter.mode(AppColors.greyColor4, BlendMode.srcIn),
                ),
                label: context.tr(LocaleKeys.applied),
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgImages.calendar,
                  colorFilter: const ColorFilter.mode(
                      AppColors.mainGreenColor, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset(
                  SvgImages.calendar,
                  colorFilter: const ColorFilter.mode(AppColors.greyColor4 , BlendMode.srcIn),
                ),
                label:context.tr(LocaleKeys.calendar),
              ),
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  SvgImages.profile,
                  colorFilter: const ColorFilter.mode(AppColors.mainGreenColor, BlendMode.srcIn),
                ),
                icon: SvgPicture.asset(
                  SvgImages.profile,
                  colorFilter: const ColorFilter.mode(AppColors.greyColor4 , BlendMode.srcIn),
                ),
                label: context.tr(LocaleKeys.profile),
              ),
            ],
          );
        },

    );
  }
}
