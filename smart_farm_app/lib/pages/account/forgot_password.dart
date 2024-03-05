import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/email/forgot_password_email.dart';
import 'package:smart_farm_app/pages/account/phone/forgot_password_phone.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QUÊN MẬT KHẨU"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "QUÊN MẬT KHẨU",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              "assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149.png",
              width: 200,
              height: 205,
            ),
            const SizedBox(height: 20),
            buildOptionContainer("assets/images/phone-call.png"),
            const SizedBox(height: 10),
            buildOptionContainer("assets/images/arroba.png"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                const ForgotPasswordPhoneScreen();
                const ForgotPasswordEmailScreen();
              },
              child: const Text("TIẾP TỤC"),
            ),
            const SizedBox(height: 10),
            const Text(
              "CHỌN SỐ ĐIỆN THOẠI HAY EMAIL",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionContainer(String imagePath) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Image.asset(
            imagePath,
            width: 75,
            height: 75,
          ),
        ),
      ],
    );
  }
}
