import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notes_app/login/models/user_model.dart';
import 'package:notes_app/login/widget/login_state.dart';

class LoginController {
  UserModel? user;
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;

  LoginController({required this.onUpdate});

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      state = LoginStateLoading();
      onUpdate();
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      state = LoginStateSuccess(user: user!);
      onUpdate();
    } catch (e) {
      state = LoginStateFailure(message: e.toString());
      onUpdate();
    }
  }
}
