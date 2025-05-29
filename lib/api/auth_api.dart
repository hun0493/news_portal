import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_portal/api/api_config.dart';
import 'package:news_portal/api/models/auth_api.dart';

class AuthApi {
  static Future <Auth?>({required String email, required String password})async {
    {
      final result = http
          .post(
            Uri.parse(ApiConfig.auth.login), // auth는 Map이므로 이렇게 접근
            body: {'email': email, 'password': password},
          )
          .timeout(
            5.toSecond,
            onTimeout: () {
              return http.Response('timeout', 500);
            },
       if (statusCode ! 200) return null;{    
       final body = result.body;
       final data = jsonDecode(body);
       final auth = 
       return auth;
    }
    }
  }
}
