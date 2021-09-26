import 'package:flutter/material.dart';
import 'package:the_complete_2021flutter_udemy/shared/compmtents/componants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
 // IconData visable= Icons.visibility;
  //IconData unVisable= Icons.visibility_off;
  //IconData visIcon=Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultFormField(
                    labelText: 'Email',
                    controller: emailController,
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String value) {
                      if (value.isEmpty) {
                        print("email must not be empty");
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                    labelText: 'Password',
                    controller: passwordController,
                    prefix: Icons.lock,
                    suffix: isPassword ?Icons.visibility : Icons.visibility_off,
                    isPassword: isPassword,
                    type: TextInputType.visiblePassword,
                    validate: (String value) {
                      if (value.isEmpty) {
                        print("password must not be empty");
                      }
                      return null;
                    },
                    suffixPressed: () {
                      setState(() {
                        isPassword =!isPassword;
                        //if(isPassword)
                         // visIcon=visable;
                        //else
                         // visIcon=unVisable;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defualtButton(
                      text: "Login",
                      function: () {
                        if (formKey.currentState.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      isUpperCase: false),
                  SizedBox(
                    height: 10.0,
                  ),
                  defualtButton(
                      text: "Register",
                      function: () {
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      isUpperCase: false),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Register Now"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
