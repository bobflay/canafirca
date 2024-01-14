import 'package:canafrica2024/Core/Dialog.dart';
import 'package:canafrica2024/Core/Network/DioClient.dart';
import 'package:canafrica2024/Models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  RxBool loading = false.obs;

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
          showSuccessDialog(Get.context!, "Success", "User Registered Successfully");
          print(post.data['token']);
      }
    }catch(exception)
    {
        loading.value = false;
    }finally{
      loading.value=false;
    }





  }

}