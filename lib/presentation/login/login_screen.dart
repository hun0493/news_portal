import 'package:easy_extension/easy_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:news_portal/api/auth_api.dart';
import 'package:news_portal/app/router/app_router.dart';
import 'package:news_portal/app/translations/app_trans.dart';
import 'package:news_portal/widgets/app_logo.dart';
import 'package:news_portal/widgets/app_scaffold.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void onLogin() async {
    //TODO 이메일,페스워드 가져오기
    final email = _emailController.text;
    final password = _passwordController.text;
    debugPrint('이메일:$email');
    debugPrint('비번:$password');

    final auth = await AuthApi.login(email: email, password: password);

    if (auth == null) return;
    if (mounted) {
      context.goNamed(AppRoute.newsList.name);
    }
  }

  TextField _textField({
    required TextEditingController controller,
    required String hintText,
    bool obsure = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obsure,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Applogo(),
              Container(
                height: 250,
                alignment: Alignment.center,
                child: Text(
                  AppTrans.login.welcome.tr(),
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              20.heightBox,
              _textField(
                controller: _emailController,
                hintText: AppTrans.login.email.tr(),
              ),
              5.heightBox,
              _textField(
                controller: _passwordController,
                hintText: AppTrans.login.password.tr(),
                obsure: true,
              ),
              20.heightBox,
              SizedBox(
                height: 55,
                child: ElevatedButton(onPressed: onLogin, child: Text("로그인")),
              ),

              Container(
                height: 70,
                alignment: Alignment.center,
                child: Row(
                  spacing: 10,
                  children: [
                    Expanded(child: Divider()),
                    Text(AppTrans.login.orUse.tr()),
                    Expanded(child: Divider()),
                  ],
                ),
              ),

              _buildSSOBtn('Google'),
              10.heightBox,
              _buildSSOBtn('Apple'),
            ],
            //#endRegion
          ),
        ),
      ),
    );
  }

  OutlinedButton _buildSSOBtn(String sso) {
    final logoUrl = {
      'Google':
          'https://api.apidog.com/api/v1/projects/866715/resources/354903/image-preview',
      'Apple':
          'https://api.apidog.com/api/v1/projects/866715/resources/354902/image-preview',
    };
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        children: [
          Image.network(
            logoUrl[sso] ?? '',
            errorBuilder: (context, error, stackTrace) {
              return Icon(LucideIcons.x);
            },
          ),
          Expanded(
            child: Center(
              child: Text(
                AppTrans.login.signInWith.tr(namedArgs: {'sso': sso}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
