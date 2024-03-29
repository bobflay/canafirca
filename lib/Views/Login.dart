import 'package:canafrica2024/Controllers/LoginController.dart';
import 'package:canafrica2024/Routes/AppRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';


class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.02,
              right: MediaQuery.of(context).size.width * 0.02),
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login Page",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Text("Email"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.email,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text("Password"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    obscureText: true,
                    controller: controller.password,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(onPressed: () {
                        print("clicked!!!!");
                        print(controller.email.value.text);
                        print(controller.password.value.text);
                        controller.login();
                      }, child: Text("Login")),
                      ElevatedButton(onPressed: () {
                        Get.toNamed(AppRoute.register);
                      }, child: Text("Register"))

                    ],
                  )
                ],
              ),
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}