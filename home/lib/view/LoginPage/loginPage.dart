import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/widget/Button/validateButton.dart';
import 'package:home/widget/input/input.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  bool canLogin = false;

  void validateLogin() {
    if (email.isNotEmpty && password.isNotEmpty) {
      setState(() {
        canLogin = true;
      });
    } else {
      setState(() {
        canLogin = false;
      });
    }
  }

  Future<String?> loginTry(String email, String password) async {
    if (email.isNotEmpty && password.isNotEmpty) {
      final Uri apiUri =
          Uri.parse('https://dev.sniperfactory.com/api/auth/login');
      final response =
          await http.post(apiUri, body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print(response.body);
        final responseData = json.decode(response.body);

        if (responseData['status']) {
          return responseData['data'];
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(child: SvgPicture.asset('assets/icon/icon_20/msg.svg')),
            Container(child: SvgPicture.asset('assets/icon/logo/Nav_Logo.svg')),
            const Spacer(),
            Input(
              placeholder: "이메일 주소를 입력해주세요.",
              isPassword: false,
              onWarning: (input) {
                return null;
              },
              onChanged: (input) {
                email = input;
                validateLogin();
              },
            ),
            const SizedBox(height: 3),
            Input(
              placeholder: "비밀번호를 입력해주세요.",
              isPassword: true,
              onWarning: (input) {
                return null;
              },
              onChanged: (input) {
                password = input;
                validateLogin();
              },
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const SizedBox(height: 30),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('비밀번호 찾기'),
                ),
                const SizedBox(height: 30),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('회원가입하기'),
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const homePage()));
                },
                child: const Text('data')),
            ValidateButton(
              available: canLogin,
              text: "로그인",
              onPressed: () {
                loginTry(email, password).then(
                  (value) {
                    if (value != null) {
                      //성공!
                    } else {
                      //실패!
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          alignment: Alignment.center,
                          icon: SvgPicture.asset(
                              "assets/icon/icon_20/warning.svg"),
                          title: const Text("로그인에 실패했습니다."),
                          content: const Text("다시 시도해주세요."),
                          actions: <Widget>[
                            ValidateButton(
                              available: true,
                              text: "다시하기",
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
