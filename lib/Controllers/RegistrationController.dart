import 'package:canafrica2024/Core/Dialog.dart';
import 'package:canafrica2024/Core/Network/DioClient.dart';
import 'package:canafrica2024/Models/User.dart';
import 'package:canafrica2024/Routes/AppRoute.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool loading = false.obs;
  late SharedPreferences prefs;

  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    prefs = await SharedPreferences.getInstance();

  }

  void register()async
  {
    try{
      loading.value = true;
      User user = User(name: name.value.text, email: email.value.text, phone: phone.value.text, password: password.value.text);
      String request_body = user.toJson();
      var post = await DioClient().getInstance().post('/register',data: request_body);
      print("response");
      print(post.data);
      if(post.statusCode==200)
      {
          showSuccessDialog(Get.context!, "Success", "User Registered Successfully",(){
            Get.offNamed(AppRoute.home);
          });
          prefs.setString('token', post.data['token']);
      }
    }catch(exception)
    {
        loading.value = false;
    }finally{
      loading.value=false;
    }





  }

}