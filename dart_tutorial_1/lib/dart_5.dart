class User {
  String username;
  String? email;
  String _password;

  String get password => _password;

  set password(String newPassword) {
    if (newPassword.length >= 8) {
      _password = newPassword;
    }
  }

  User(this.username, this._password);
}
