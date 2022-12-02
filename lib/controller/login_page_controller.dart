import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/state_manager.dart';
import 'package:syoft_ui/helpers/dio_confiq.dart';

class LoginController extends GetxController{
  RxBool signIn = false.obs;
  


 signInDataPassing(String eMail, String password) async {
  Map<String , String> signInData = {
    "user_email" : eMail,
    "user_password": password,
  };
  try {
  Response response = await MAINDIO.post("user_registertion", data: signInData);
   log("The response from siging is $response");
} on DioError catch (e) {
   log("The signing data passing error is ${e.response!.data}");
}

 

 }

 signUpDataPassing(String name, String phoneNumber, String email, String password) async {
  Map<String , String> signUpData = {
    "user_firstname" : name,
    "user_email" : email,
    "user_phone" : phoneNumber,
    "user_password": password,
    "user_lastname" : "ni",
    "user_city" : "Hyderabad",
    "user_zipcode" : "500072",
  };
  try {
  Response response = await MAINDIO.post("user_registertion", data: signUpData);
   log("The response from signUp is $response");
} on DioError catch (e) {
   log("The signing data passing error is ${e.response!.data}");
}

 }
}