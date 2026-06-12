import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration/login_screen.dart';
import 'package:registration/service.dart';

class Forgotpassword extends StatelessWidget {
  Forgotpassword({super.key});
  TextEditingController emailc = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(alignment: Alignment.topLeft),
                  Text(
                    "Enter your email below to reset your password",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: emailc,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                      if (!(value.contains("@") && value.contains("."))) {
                        return "Enter valid email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Email",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Forgot(emailc.text, context);
                    },
                    child: Text("Recovery Link"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text("Back to login"),
                  ),
                  SizedBox(height: 10),
                  Lottie.asset("assets/forgot.json"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
