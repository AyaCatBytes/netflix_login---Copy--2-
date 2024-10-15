// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  Color buttonColor = Color.fromARGB(255, 211, 27, 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      /*  appBar: AppBar(
        backgroundColor: Colors.black,
      ), */
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //netfliz picture

            SizedBox(
              // color: Colors.green,
              //height: 30,
              //width: 30,
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 3,
              child: Image.network(
                fit: BoxFit.cover,
                "https://images8.alphacoders.com/115/thumb-1920-1152301.png",
              ),
            ),

            //sign in text

            Text(
              "Sign In ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'sans-serif'),
            ),

            //user name text filed
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 35, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    hintText: 'Email or mobile number'),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            //password--textfiled

            Padding(
              padding: const EdgeInsets.only(left: 4, top: 15, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(
                      color: Colors.white70,
                    ),
                    hintText: 'Password'),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),

            //button sign in number 1
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 15, right: 20),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: buttonColor,
                  //

                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {
                  setState(() {
                    buttonColor =
                        buttonColor == Color.fromARGB(255, 211, 27, 14)
                            ? Color.fromARGB(255, 14, 223, 94)
                            : Color.fromARGB(255, 211, 27, 14);
                  });
                },
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sans-serif',
                    ),
                  ),
                ),
              ),
            ),

            //text or
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 5),
                child: Center(
                  child: Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'sans-serif'),
                  ),
                ),
              ),
            ),

            // number 2 button

            Padding(
              padding: const EdgeInsets.only(left: 4, top: 15, right: 20),
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color.fromRGBO(79, 76, 76, 0.73),
                  //Color.fromARGB(255, 211, 27, 14),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {},
                child: Center(
                    child: Text(
                  "Use a Sign-In Code",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sans-serif',
                  ),
                )),
              ),
            ),

            //Forget password? text
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Center(
                child: Text(
                  "Forget password?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontFamily: 'sans-serif'),
                ),
              ),
            ),

            //check box

            Padding(
              padding: const EdgeInsets.only(top: 22, left: 0),
              child: Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    side: BorderSide(color: Colors.white, width: 1),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'sans-serif'),
                  ),
                ],
              ),
            ),

            //New to Netflix? Sign up now.
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5),
              child: Text(
                "New to Netflix? Sign up now.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontFamily: 'sans-serif'),
              ),
            ),

            //This page is protected by Google reCAPTCHA to ensure you're not a bot.Learn more.
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 5, right: 30),
              child: Text(
                "This page is protected by Google reCAPTCHA to ensure you're not a bot.Learn more.",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontFamily: 'sans-serif'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
