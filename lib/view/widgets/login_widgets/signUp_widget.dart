import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syoft_ui/controller/login_page_controller.dart';

class SignUpWidget extends StatefulWidget {
  SignUpWidget({Key? key, required this.size}) : super(key: key);

  final size;

  static final formKey = GlobalKey<FormState>();

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController nameController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find<LoginController>();
    return Container(
      height: widget.size.height * .70,
      width: widget.size.width,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Form(
          key: SignUpWidget.formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: widget.size.height * .05,
                ),
                Text(
                  "Create Account",
                  style: GoogleFonts.rubik(
                      fontSize: 21, fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Full Name",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the Name";
                          }
                        },
                        controller: nameController,
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
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Phone Number",
                        style: TextStyle(fontSize: 12),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the phone number";
                          }
                        },
                        controller: numberController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(7)),
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 30),
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
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (SignUpWidget.formKey.currentState!.validate()) {
                      loginController.signUpDataPassing(
                          nameController.text,
                          numberController.text,
                          emailController.text,
                          passwordController.text);
                    }
                  },
                  child: Container(
                    height: widget.size.height * .06,
                    width: widget.size.width * .70,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
