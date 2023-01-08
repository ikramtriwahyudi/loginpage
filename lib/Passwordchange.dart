import 'package:belajar/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Passwordchange extends StatefulWidget {
  const Passwordchange({super.key});

  @override
  State<Passwordchange> createState() => _PasswordchangeState();
}

class _PasswordchangeState extends State<Passwordchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Successmark.png"),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Password Changed!",
              style: GoogleFonts.urbanist(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Your password has been changed successfully.",
              style: GoogleFonts.urbanist(fontSize: 15),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Loginpage(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: const Size(375, 60),
                backgroundColor: const Color(0xff1E232C),
              ),
              child: const Text('Back to login'),
            ),
          ],
        ),
      ),
    );
  }
}
