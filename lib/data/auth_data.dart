class AuthTestData {
  static final Map<String, String> testUsers = {
    'usuario1@test.com': 'password123',
    'usuario2@test.com': 'clave456',
    'admin@test.com': 'admin789',
  };

  static bool validateCredentials(String email, String password) {
    return testUsers[email] == password;
  }
}
