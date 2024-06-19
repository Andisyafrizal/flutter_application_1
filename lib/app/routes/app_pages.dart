import 'package:get/get.dart';

import '../models/absen/bindings/absen_binding.dart';
import '../models/absen/views/absen_view.dart';
import '../models/change_password/bindings/change_password_binding.dart';
import '../models/change_password/views/change_password_view.dart';
import '../models/home/bindings/home_binding.dart';
import '../models/home/views/home_view.dart';
import '../models/login/bindings/login_binding.dart';
import '../models/login/views/login_view.dart';
import '../models/profile/bindings/profile_binding.dart';
import '../models/profile/views/profile_view.dart';
import '../models/register/bindings/register_binding.dart';
import '../models/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.ABSEN,
      page: () => const AbsenView(),
      binding: AbsenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
