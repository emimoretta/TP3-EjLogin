import 'package:flutter_application_1/data/auth_data.dart';

class AuthRepository {
  Future<bool> authenticate(String email, String password) async {
    // Simulamos una pequeña demora como si fuera una petición real
    await Future.delayed(const Duration(milliseconds: 500));
    return AuthTestData.validateCredentials(email, password);
  }
}
