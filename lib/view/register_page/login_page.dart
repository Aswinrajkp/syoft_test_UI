import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoft_ui/controller/login_page_controller.dart';
import 'package:syoft_ui/view/widgets/login_widgets/signIn_widget.dart';
import 'package:syoft_ui/view/widgets/login_widgets/signUp_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: Container(
          height: size.height,
          
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: size.height * .45,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/Images/signinPage.jpeg"),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Obx(() => loginController.signIn.value
                    ? SignInWidget(
                        size: size,
                      )
                    : SignUpWidget(
                        size: size,
                      )),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Obx(() => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("I'm a new user."),
                                  loginController.signIn.value
                                      ? InkWell(
                                          onTap: () {
                                            loginController.signIn.value =
                                                false;
                                          },
                                          child: Text(
                                            "Sign Up",
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontWeight: FontWeight.w600),
                                          ))
                                      : InkWell(
                                          onTap: () {
                                            loginController.signIn.value = true;
                                          },
                                          child: Text(
                                            "Sign In",
                                            style: TextStyle(
                                                color: Colors.purple,
                                                fontWeight: FontWeight.w600),
                                          ))
                                ],
                              )))))
            ],
          ),
          
        ),
      ),
    );
  }
}
