import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syoft_ui/controller/login_page_controller.dart';
import 'package:syoft_ui/view/register_page/login_page.dart';

class RegisterIntroScreen extends StatelessWidget {
  const RegisterIntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 70, 16, 20),
            child: Center(
              child: Container(
                height: size.height*.60,
               width: size.width*.85,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("asset/Images/introImg.jpeg"),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Align(alignment: Alignment.topCenter, child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("My Cantor.",style: GoogleFonts.rubik(fontSize: 26,fontWeight: FontWeight.w800),),
              )),
              ),
            ),
          ),
          Text("Best way to invest Your Money!",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 16),
            child: InkWell(
              onTap: (){
                loginController.signIn.value = false;
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()));
          },
              child: Container(
                height: size.height*.06,
                width: size.width*.70,
                decoration: BoxDecoration(color:Colors.purple,
                borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w700),),),
              ),
            ),
          ),
        InkWell(
          onTap: (){
            loginController.signIn.value = true;
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginPage()));
          },
          child: Container(
                height: size.height*.06,
                width: size.width*.70,
                decoration: BoxDecoration(color:Colors.white,
                border: Border.all(width: 2,color: Colors.black),borderRadius: BorderRadius.circular(10),
                ),
                 child: Center(child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.w700))),
              ),
        ),
        ],),
      ),
    );
  }
}