import 'package:canafrica2024/Bindings/LoginBinding.dart';
import 'package:canafrica2024/Routes/AppRoute.dart';
import 'package:canafrica2024/Views/Login.dart';
import 'package:canafrica2024/Views/Registration.dart';
import 'package:get/get.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.register, page: ()=> Registration()),
    GetPage(name: AppRoute.login, page: ()=> Login(),binding: LoginBinding())

  ];
}