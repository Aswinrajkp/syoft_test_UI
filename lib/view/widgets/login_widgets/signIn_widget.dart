import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoft_ui/controller/login_page_controller.dart';

class SignInWidget extends StatelessWidget {
  SignInWidget({super.key, required this.size});

  final size;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find<LoginController>();
    return Container(
      height: size.height * .50,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .05,
              ),
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email Address",
                      style: TextStyle(fontSize: 12),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter the E-mail";
                        }
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7)),
                          fillColor: Colors.white,
                          filled: true),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(fontSize: 12),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter the Password";
                        }
                      },
                      controller: passwordController,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                    const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    loginController.signInDataPassing(
                        emailController.text, passwordController.text);
                  }
                },
                child: Container(
                  height: size.height * .06,
                  width: size.width * .70,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("I'm a new user."),
                          loginController.signIn.value
                              ? InkWell(
                                  onTap: () {
                                    loginController.signIn.value = false;
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
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
