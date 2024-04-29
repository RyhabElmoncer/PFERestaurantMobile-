import 'package:flutter/material.dart';
import 'package:gestionrestaurant/screens/AccueilAdminPage.dart';
import 'package:gestionrestaurant/screens/AccueilChefPage.dart';
import 'package:gestionrestaurant/screens/AccueilClientPage.dart';
import 'package:gestionrestaurant/screens/AuthentificationScreen.dart';
import 'package:gestionrestaurant/screens/ConnexionPage.dart';
import 'package:gestionrestaurant/screens/SignUpScreenad.dart';
import 'package:gestionrestaurant/screens/aboutScreen.dart';
import 'package:gestionrestaurant/screens/changeAddressScreen.dart';
import 'package:gestionrestaurant/screens/dessertScreen.dart';
import 'package:gestionrestaurant/screens/forgetPwScreen.dart';
import 'package:gestionrestaurant/screens/homeScreen.dart';
import 'package:gestionrestaurant/screens/inboxScreen.dart';
import 'package:gestionrestaurant/screens/individualItem.dart';
import 'package:gestionrestaurant/screens/introScreen.dart';
import 'package:gestionrestaurant/screens/landingScreen.dart';
import 'package:gestionrestaurant/screens/loginScreen.dart';
import 'package:gestionrestaurant/screens/menuScreen.dart';
import 'package:gestionrestaurant/screens/moreScreen.dart';
import 'package:gestionrestaurant/screens/myOrderScreen.dart';
import 'package:gestionrestaurant/screens/newPwScreen.dart';
import 'package:gestionrestaurant/screens/notificationScreen.dart';
import 'package:gestionrestaurant/screens/offerScreen.dart';
import 'package:gestionrestaurant/screens/paymentScreen.dart';
import 'package:gestionrestaurant/screens/profileScreen.dart';
import 'package:gestionrestaurant/screens/sentOTPScreen.dart';
import 'package:gestionrestaurant/screens/signUpScreen.dart';

import 'const/colors.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // dans ce  widget on a les roots de  l'application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Restaurant',
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.orange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.secondary,
          ),
        ),
      ),
      home: LoginPage(),
      routes: {
        LandingScreen.routeName: (context) => LandingScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPwScreen.routeName: (context) => ForgetPwScreen(),
        SendOTPScreen.routeName: (context) => SendOTPScreen(),
        NewPwScreen.routeName: (context) => NewPwScreen(),
        IntroScreen.routeName: (context) => IntroScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
        OfferScreen.routeName: (context) => OfferScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        DessertScreen.routeName: (context) => DessertScreen(),
        IndividualItem.routeName: (context) => IndividualItem(),
        PaymentScreen.routeName: (context) => PaymentScreen(),
        NotificationScreen.routeName: (context) => NotificationScreen(),
        AboutScreen.routeName: (context) => AboutScreen(),
        InboxScreen.routeName: (context) => InboxScreen(),
        MyOrderScreen.routeName: (context) => MyOrderScreen(),
        ChangeAddressScreen.routeName: (context) => ChangeAddressScreen(),
        SignUpScreenad.routeName: (context) => SignUpScreenad(),
        AuthentificationPage.routeName: (context) => AuthentificationPage(),
        AccueilAdminPage.routeName: (context) => AccueilAdminPage(),
        ChefPage.routeName: (context) => ChefPage(),
        AccueilClientPage.routeName: (context) => AccueilClientPage (),
        "/IntroScreen": (context) => IntroScreen(),
      },
    );
  }
}
