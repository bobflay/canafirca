import 'package:canafrica2024/Bindings/HomeBinding.dart';
import 'package:canafrica2024/Bindings/LoginBinding.dart';
import 'package:canafrica2024/Bindings/RegistrationBinding.dart';
import 'package:canafrica2024/Routes/AppRoute.dart';
import 'package:canafrica2024/Views/Home.dart';
import 'package:canafrica2024/Views/Login.dart';
import 'package:canafrica2024/Views/Registration.dart';
import 'package:get/get.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(name: AppRoute.register, page: ()=> Registration(),binding: RegistrationBinding()),
    GetPage(name: AppRoute.login, page: ()=> Login(),binding: LoginBinding()),
    GetPage(name: AppRoute.home, page: ()=> Home(),binding: HomeBinding())


  ];
}