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
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        
        body: Stack(
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
              child: SingleChildScrollView(
                child: Obx(() => loginController.signIn.value
                    ? SignInWidget(
                        size: size,
                      )
                    : SignUpWidget(
                        size: size,
                      )),
              ),
            ),
            Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back))),
         
          ],
        ),
      ),
    );
  }
}
