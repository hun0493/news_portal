import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:news_portal/app/router/translations/app_trans.dart';

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
  
  void 
  onLogin(){
      // TODO : 이메일 , 패스워드 가져오기
      final email = _emailController.text;
      final password = _passwordController.text;

      debugPrint('이메일 : $email');
      debugPrint('비밀번호 : $password');
     }

     TextField _textField({
    required TextEditingController? controller,
    required String? hintText,
  }) {
    return OutlinedButton(
      onPressed: (){}
      child: Row(
        children: [
          Imagenetwork(logoUrl),
          Text(AppTrans().login.signInWith.tr(namedArgs: { 'sso': 'Google' })),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    
    

    return AppScaffold(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    AppTrans.login.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ),

                Text(
                  'Portal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
          //#region  
          _textField(),

          ElevateButton(
            onPressed: onLogin,
            child: Text(),
          )
        ),
      ),
    );
  }
  Container(
    height: 70,
    alignment: Alignment.center,
    child:Row(children: [
      Divider(),
       Text(AppTrans.login.orUse.tr()),
       Expanded(child: Divider()),
    ],
    ),

  )
   {
    return TextField(
          controller: _emailController,
          decoration: InputDecoration(
          border: OutlineInputBorder(),  
          hintText: AppTrans().login.email.tr(),
         ),
        );
  }
  return OutlinedButton(onPressed: (){}, child: Row(
    children: [
      Icon(Icons.smile),
      Text(AppTrans().login.signInWith.tr()
      namedArgs: { 'sso': 'Google' }
      ),
    ],
  ),
  )
}
