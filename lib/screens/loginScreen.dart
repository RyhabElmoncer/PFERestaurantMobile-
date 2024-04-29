import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:gestionrestaurant/screens/signUpScreen.dart';
import '../const/colors.dart';

import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

import 'AccueilAdminPage.dart';
import 'AccueilChefPage.dart';
import 'AccueilClientPage.dart';
import 'forgetPwScreen.dart';


class LoginScreen extends StatelessWidget {
  static const routeName = "/loginScreen";

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login(BuildContext context) async {
    String email = _emailController.text;
    String password = _passwordController.text;
    print('Email: $email'); // Affiche la valeur de l'e-mail dans la console
    print('password: $password'); // Affiche la valeur de l'e-mail dans la console

    // Implement your login logic here
    // Remove Firebase authentication and Firestore code

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              children: [
                Text(
                  "Connexion",
                  style: Helper.getTheme(context).headline6,
                ),
                Spacer(),
                Text('Ajoutez vos coordonnées pour vous connecter'),
                Spacer(),
                CustomTextInput(
                  controller: _emailController,
                  hintText: "Votre e-mail",
                ),
                Spacer(),
                CustomTextInput(
                  controller: _passwordController,
                  hintText: "Mot de passe",
                  obscureText: true,
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _login(context),
                    child: Text("Connexion"),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(ForgetPwScreen.routeName);
                  },
                  child: Text("Mot de passe oublié?"),
                ),
                Spacer(
                  flex: 2,
                ),
                Text("ou Connectez-vous avec"),
                Spacer(),
                SignInButton(
                  Buttons.Google,
                  text: "S'inscrire avec Google",
                  onPressed: () {},
                ),
                Spacer(),
                SignInButton(
                  Buttons.Facebook,
                  text: "S'inscrire avec Facebook",
                  onPressed: () {},
                ),
                Spacer(
                  flex: 4,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(SignUpScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Vous n'avez pas de compte?"),
                      Text(
                        "S'inscrire",
                        style: TextStyle(
                          color: AppColor.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
