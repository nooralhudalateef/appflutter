import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appali2/GetXHelper/FirebaseController.dart';
import 'package:flutter_appali2/Screen/ForgotPassword.dart';
import 'package:flutter_appali2/Screen/RegistrationPage.dart';
//import 'file:///C:/Android%20Studio%20Stuff/Flutter%20Project/flutter_login_ui/lib/Widgets/SocialSignWidgetRow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends GetWidget<FirebaseController> {

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           image: AssetImage("images/assets/backgroundUI.png"),
              //           fit: BoxFit.cover
              //       )
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,40 , 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //     height: 100,
                    //     width: 100,
                    //     child: SvgPicture.asset("images/assets/xing.svg")),
                    // HeightBox(10),
                    // "Login".text.color(Colors.white).size(20).make(),
                    // HeightBox(
                    //     20
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.white
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              color: Colors.blue[400]
                            )
                          ),
                          isDense: true,                      // Added this
                          contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                        ),
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                HeightBox(
                  20
                ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextField(
                        controller: pass,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.white
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Colors.blue[400]
                              )
                          ),
                          isDense: true,                      // Added this
                          contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                        ),
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    HeightBox(20),

                    GestureDetector(onTap: (){
                      Get.to(ForgotPassword());
                    },
                    child: Text("Forgot Password ? Reset Now",style: TextStyle(color: Colors.white),),),

                    HeightBox(10),
                    GestureDetector(
                        onTap: (){
                          print("Login Clicked Event");
                          _login();
                        },
                        child: "Login".text.white.light.xl.makeCentered().box.white.shadowOutline(outlineColor: Colors.grey).color(Color(0XFFFF0772)).roundedLg.make().w(150).h(40)),
                    HeightBox(20),
                    "Login with".text.white.makeCentered(),
                    //SocialSignWidgetRow()

                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
          },
          child: RichText(text: TextSpan(
            text: 'New User?',
            style: TextStyle(fontSize: 15.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Register Now',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color(0XFF4321F5)),
              ),
            ],
          )
          ).pLTRB(20, 0, 0, 15),
        )
    );
  }

  void _login() {

    controller.login(email.text, pass.text);
  }

}



