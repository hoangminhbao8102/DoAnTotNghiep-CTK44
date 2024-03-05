import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/set_password.dart';

class OTPPhoneScreen extends StatelessWidget {
  const OTPPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NHẬP OTP"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "NHẬP OTP",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Một mã code 4 số đã gửi tới điện thoại của bạn",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Không được nhận mã!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildOTPBox(),
                const SizedBox(width: 10),
                buildOTPBox(),
                const SizedBox(width: 10),
                buildOTPBox(),
                const SizedBox(width: 10),
                buildOTPBox(),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149.png",
              width: 200,
              height: 205,
            ),
            const SizedBox(height: 20),
            const Text(
              "Gửi lại mã",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                const SetPasswordScreen();
              },
              child: const Text("XÁC NHẬN"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOTPBox() {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(color: Colors.grey),
      ),
    );
  }
}
