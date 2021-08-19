import 'package:flutter/cupertino.dart';

class Authenticaton {
  final String userName;
  final String email;
  final String mobileNumber;
  final String password;

  Authenticaton({
    required this.userName,
    required this.email,
    required this.mobileNumber,
    required this.password,
  });
}

class AuthenticationData with ChangeNotifier {
  List<Authenticaton> authenticationDataList = [
    Authenticaton(
      userName: 'tester',
      email: 'test@test.test',
      mobileNumber: '9999999999',
      password: '12345678',
    )
  ];

  void login(
    String username,
    String mail,
    String number,
    String password,
  ) {
    print(authenticationDataList
        .where((element) => element.userName == username)
        .runtimeType);
  }
}
