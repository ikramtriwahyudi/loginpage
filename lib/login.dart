import 'package:belajar/Forgotpassword.dart';
import 'package:belajar/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool showPassword = true;

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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Welcomepage(),
                        ));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Welcome Back! Glad to see you. Again!",
                style: TextStyle(
                  fontSize: 40,
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
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: TextField(
                obscureText: showPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: showPassword == true
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  hintText: 'Enter Your Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Forgotpasswordpage(),
                    ));
              },
              child: const Text("Forgot Password?"),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fixedSize: const Size(370, 50),
                      backgroundColor: const Color(0xff1E232C)),
                  child: const Text('Login'),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Or Login With"),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: SvgPicture.asset("assets/facebook_ic.svg"),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: SvgPicture.asset("assets/cib_apple.svg"),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: SvgPicture.asset("assets/google_ic.svg"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
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
                    onPressed: () {},
                    child: const Text("Register Now"),
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
