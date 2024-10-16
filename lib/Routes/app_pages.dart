import 'package:athlink/App/Splash/View/splash_view.dart';
import 'package:athlink/App/Splash/ViewModel/splash_view_model.dart';
import 'package:athlink/screens/bottom_nav/view/bottomnav_view.dart';
import 'package:athlink/screens/bottom_nav/viewmodel/bottomnav_viewModel.dart';
import 'package:athlink/screens/chat/viewModel/chat_viewmdel.dart';
import 'package:athlink/screens/connect_social/view/connect_social.dart';
import 'package:athlink/screens/connect_social/viewModel/connect_social_viewModel.dart';
import 'package:athlink/screens/event/viewModel/eventviewmodel.dart';
import 'package:athlink/screens/eventfirstscreen/view/evetfirstscreen.dart';
import 'package:athlink/screens/eventfirstscreen/viewModel/eventfirstscreen_viewmodel.dart';
import 'package:athlink/screens/forgetpassword/viewModel/forgetpassword_viewModel.dart';
import 'package:athlink/screens/forgetpassword/view/forgetpassword_view.dart';
import 'package:athlink/screens/home/view/home_view.dart';
import 'package:athlink/screens/home/viewModel/home_viewModel.dart';
import 'package:athlink/screens/location/view/location_view.dart';
import 'package:athlink/screens/location/viewModel/locaton_viewModel.dart';
import 'package:athlink/screens/login/view/login_view.dart';
import 'package:athlink/screens/login/viewModel/login_viewModel.dart';
import 'package:athlink/screens/onbaording_screen/viewmodel/onbaording_viewModel.dart';
import 'package:athlink/screens/onbaording_screen/view/onboarding_view.dart';
import 'package:athlink/screens/personal_info/view/personal_info_view.dart';
import 'package:athlink/screens/personal_info/viewModel/personal_info_viewModel.dart';
import 'package:athlink/screens/profile/view/profile_view.dart';
import 'package:athlink/screens/profile/viewModel/profile_viewmodel.dart';
import 'package:athlink/screens/prompts/view/prompts_view.dart';
import 'package:athlink/screens/prompts/viewModel/prompts_viewModel.dart';
import 'package:athlink/screens/selectintrerest/view/selectinterest_view.dart';
import 'package:athlink/screens/selectintrerest/viewModel/selectinterest_viewModel.dart';
import 'package:athlink/screens/signup/view/signup_view.dart';
import 'package:athlink/screens/signup/viewModel/sign_up_viewModel.dart';
import 'package:athlink/screens/username/view/username_view.dart';
import 'package:athlink/screens/username/viewModel/username_viewModel.dart';
import 'package:athlink/screens/verifypassword%20-%20Copy/viewModel/verifypassword_viewModel.dart';
import 'package:athlink/screens/verifypassword%20-%20Copy/view/verifypassword_view.dart';
import 'package:athlink/screens/verifypassword/viewModel/verifypassword_viewModel.dart';
import 'package:athlink/screens/verifypassword/view/verifypassword_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.BottomnavView,
      page: () => const BottomnavView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeViewmodel>(() => HomeViewmodel());
        Get.lazyPut<ChatViewmdel>(() => ChatViewmdel());
        Get.lazyPut<HomeViewmodel>(() => HomeViewmodel());
        Get.lazyPut<EventViewModel>(
          () => EventViewModel(),
        );
        Get.lazyPut<BottomnavViewmodel>(
          () => BottomnavViewmodel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.splashView,
      page: () => const SplashScreenView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashViewModel>(
          () => SplashViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.OnboardingView,
      page: () => const OnboardingView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<OnboardingViewModel>(
          () => OnboardingViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.UsernameView,
      page: () => const UsernameView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<UsernameViewmodel>(
          () => UsernameViewmodel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.HomeView,
      page: () => const HomeView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeViewmodel>(
          () => HomeViewmodel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.PromptsView,
      page: () => const PromptsView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<PromptsViewModel>(
          () => PromptsViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.SignUpScreen,
      page: () => SignUpScreen(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SignUpViewModel>(
          () => SignUpViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.LocationView,
      page: () => const LocationView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<LocationViewModel>(
          () => LocationViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.ForgetPassword,
      page: () => const ForgetPassword(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<ForgetPasswordModel>(
          () => ForgetPasswordModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.VerifyPassword,
      page: () => VerifyPassword(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<VerifyPasswordModel>(
          () => VerifyPasswordModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.VerifyPassword1,
      page: () => VerifyPassword1(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<VerifyPasswordModel1>(() => VerifyPasswordModel1());
      }),
    ),
    GetPage(
      name: AppRoutes.ProfileView,
      page: () => const ProfileView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<ProfileViewmodel>(
          () => ProfileViewmodel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.splashView,
      page: () => const SplashScreenView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SplashViewModel>(
          () => SplashViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.LoginView,
      page: () => const LoginView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<LoginViewModel>(
          () => LoginViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.PInfoView,
      page: () => const PersonalInfoView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<PersonalInfoViewModel>(
          () => PersonalInfoViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.ConnectSocialView,
      page: () => const ConnectSocialView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<ConnectSocialViewModel>(
          () => ConnectSocialViewModel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.SelectInterestView,
      page: () => const SelectInterestView(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<SelectinterestViewmodel>(
          () => SelectinterestViewmodel(),
        );
      }),
    ),
    GetPage(
      name: AppRoutes.EventFirstScreen,
      page: () => const EventFirstScreen(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.lazyPut<EventFirstScreenViewModel>(
          () => EventFirstScreenViewModel(),
        );
      }),
    ),
  ];
}
