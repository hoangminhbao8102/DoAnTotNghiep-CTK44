import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/phone/otp_phone.dart';

class ForgotPasswordPhoneScreen extends StatelessWidget {
  const ForgotPasswordPhoneScreen({Key? key}) : super(key: key);

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
            Stack(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    // ignore: use_full_hex_values_for_flutter_colors
                    color: Color(0xfffd9d9d9),
                  ),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Nhập số điện thoại",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                const OTPPhoneScreen();
              },
              child: const Text("TIẾP TỤC"),
            ),
          ],
        ),
      ),
    );
  }
}
