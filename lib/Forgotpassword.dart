import 'package:belajar/login.dart';
import 'package:belajar/Otpverification.dart';
import 'package:flutter/material.dart';

class Forgotpasswordpage extends StatefulWidget {
  const Forgotpasswordpage({super.key});

  @override
  State<Forgotpasswordpage> createState() => _ForgotpasswordpageState();
}

class _ForgotpasswordpageState extends State<Forgotpasswordpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Enter Your Email'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Otpverification(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    fixedSize: const Size(375, 60),
                    backgroundColor: const Color(0xff1E232C),
                  ),
                  child: const Text('Send Code'),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Loginpage(),
                        ),
                      );
                    },
                    child: const Text("Login"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
