import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String email;
  final String? name;
  final String id;

  UserModel({required this.email, this.name, required this.id});

  factory UserModel.google(GoogleSignInAccount account) {
    return UserModel(
      email: account.email,
      name: account.displayName,
      id: account.id,
    );
  }
}
