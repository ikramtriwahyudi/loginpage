import 'package:belajar/Newpassword.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class Otpverification extends StatelessWidget {
  const Otpverification({super.key});

  get otpController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 60),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
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
              height: 20,
            ),
            Text(
              "OTP Verification",
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.bold, fontSize: 40),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 30),
              child: Text(
                "Enter the verification code we just sent on your email address.",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            OTPTextField(
                controller: otpController,
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 10,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  ("Changed: " + pin);
                },
                onCompleted: (pin) {
                  ("Completed: " + pin);
                }),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Newpassword(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: const Size(375, 60),
                backgroundColor: const Color(0xff1E232C),
              ),
              child: const Text('Verify'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't received code?",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Resend"),
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
