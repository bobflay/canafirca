import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


class Registration extends StatefulWidget {


  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
                        "Registration Form",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Text("Name"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text("Email"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text("Phone"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text("Password"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    obscureText: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Submit")),
                      ElevatedButton(onPressed: () {
                        Get.back();
                      }, child: Text("Back")),

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