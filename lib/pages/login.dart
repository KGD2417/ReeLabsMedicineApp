import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pill_pal/pages/bottomNav.dart';
import 'package:pinput/pinput.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    // CheckUser().isLogin(context);
    super.initState();
  }

  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController refController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  
  sendSMS() async {
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return SizedBox(
        height: 650,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Enter the OTP ",style: TextStyle(
                fontSize: 20,
                fontFamily: GoogleFonts.poppins().fontFamily,
              ),),
              const SizedBox(
                height: 10,
              ),
              Pinput(
                controller: otpController,
                length: 6,
                showCursor: true,
                defaultPinTheme: PinTheme(
                    width: 50,
                    height: 60,
                    textStyle: TextStyle(
                        fontSize: 20,
                        fontFamily:
                        GoogleFonts
                            .poppins()
                            .fontFamily,
                        fontWeight:
                        FontWeight.w600),
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(
                          10),
                      border: Border.all(
                          color: Color(0xFFB784B7),
                          width: 2),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(onPressed: (){

              }, child: Text("Didn't Receive OTP? Resend",style: Theme.of(context).textTheme.bodyLarge,)),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: GoogleFonts
                                .poppins()
                                .fontFamily),
                      )
                  ),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                            "images/logo.png",
                        ),
                        Text(
                          "Sign in / Sign up",
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineMedium,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.call),
                              labelText: "Phone Number",
                              hintText: "Enter Phone Number"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid Phone Number';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: refController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Iconsax.receipt),
                              labelText: "Referral Code",
                              hintText: "Enter Your Referral Code"),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter a valid Code';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Color(0xFFfcbc5c)),
                                ),

                                onPressed: () async {

                                  if(_formKey.currentState!.validate()) {
                                          sendSMS();
                                  }
                                  else{
                                    
                                  }
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: GoogleFonts
                                          .poppins()
                                          .fontFamily),
                                ))),

                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}