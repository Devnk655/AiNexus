import 'package:ainexus/homenexus.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;

  OtpScreen(this.verificationId);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController _otpController = TextEditingController();

  Future<void> signInWithOTP(String otp) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId,
        smsCode: otp,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);

      // Redirect to the next page after successful verification
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AiNexus()),
      );
    } catch (e) {
      // Handle verification failure
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Verification Failed'),
            content: Text('Invalid OTP. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Image(
            height: 200,
            width: 200,
            image: AssetImage("images/otpimage.jpg"),
          ),
          Text(
            "Phone Verification",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "We need to register your phone before getting \n started!",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
              TextField(
                obscureText: true,
                controller: _otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  labelText: 'Enter OTP',
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
                child: Text('Verify OTP'),
                onPressed: () {
                  String otp = _otpController.text.trim();
                  if (otp.isNotEmpty) {
                    signInWithOTP(otp);
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Invalid OTP'),
                          content: Text('Please enter a valid OTP.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


