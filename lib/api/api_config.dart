class ApiConfig {
  static const String baseUrl = 'https://daelim-server.fleecy.dev';
  static const String funcUri = '$baseUrl/functions/v1';

  static final api = (
    login: '$funcUri/auth/get-token', //
  );
}
