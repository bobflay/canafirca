import 'package:canafrica2024/Controllers/HomeController.dart';
import 'package:canafrica2024/Controllers/RegistrationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return GetBuilder<HomeController>(builder: (controller) => Scaffold(
      appBar: AppBar(
        title: Text("CoCAN 2024"),
        backgroundColor: Colors.blue,
      ),
        body: Column(
          children: [

          ],
        ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: (){
                    print("signed out is clicked");
                    controller.logout();
                },
                child: Text("Signout")
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    ));
  }
}