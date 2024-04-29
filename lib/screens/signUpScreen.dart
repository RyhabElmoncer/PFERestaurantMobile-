import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../screens/loginScreen.dart';
import '../utils/helper.dart';
import '../widgets/customTextInput.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUpScreen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void _registerUser() {
    // Implement your user registration logic here
    // This function was previously handling Firebase registration,
    // you need to replace it with your own logic
    // Remove the Firebase authentication and Firestore code
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: SafeArea(
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "  S'inscrire",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 23,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Ajoutez vos coordonnées pour vous inscrire",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    CustomTextInput(
                        hintText: "Nom", controller: _nameController),
                    Spacer(),
                    CustomTextInput(
                        hintText: "E-mail", controller: _emailController),
                    Spacer(),
                    CustomTextInput(
                        hintText: "Mobile", controller: _mobileController),
                    Spacer(),
                    CustomTextInput(
                        hintText: "Adresse", controller: _addressController),
                    Spacer(),
                    CustomTextInput(
                        hintText: "Mot de passe",
                        controller: _passwordController,
                        isPassword: true),
                    Spacer(),
                    CustomTextInput(
                        hintText: "Confirmez le mot de passe",
                        controller: _confirmPasswordController,
                        isPassword: true),
                    Spacer(),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _registerUser,
                        child: Text("S'inscrire"),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Vous avez déjà un compte?"),
                          Text(
                            "Connexion",
                            style: TextStyle(
                              color: AppColor.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
