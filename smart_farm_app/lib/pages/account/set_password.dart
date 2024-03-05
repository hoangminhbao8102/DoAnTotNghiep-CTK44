import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/log_in.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ĐẶT LẠI MẬT KHẨU"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "ĐẶT LẠI MẬT KHẨU",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Color(0xffd9d9d9),
                  ),
                ),
                const SizedBox(
                  width: 15,
                  height: 20,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/kisspng-computer-icons-login-management-user-5ae155f3386149.png",
              width: 200,
              height: 205,
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Mật khẩu mới",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                buildPasswordInput(),
                const SizedBox(height: 20),
                const Text(
                  "Nhập lại mật khẩu mới",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                buildPasswordInput(),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                const LoginScreen();
              },
              child: const Text("ĐẶT LẠI MẬT KHẨU"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPasswordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        suffixIcon: Stack(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: const BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
