import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:greengentem/pages/BuyHistoryDetails.dart';
import 'package:greengentem/pages/Buyhistory.dart';
import 'package:greengentem/pages/LiveCollectionTracking.dart';
import 'package:greengentem/pages/LiveDeliveryTracking.dart';
import 'package:greengentem/pages/SellHistoryDetails.dart';
import 'package:greengentem/pages/Sellhistory.dart';
import 'package:greengentem/pages/aboutUs.dart';
import 'package:greengentem/pages/allproduct.dart';
import 'package:greengentem/pages/category.dart';
import 'package:greengentem/pages/collab.dart';
import 'package:greengentem/pages/contactUs.dart';
import 'package:greengentem/pages/login_page.dart';
import 'package:greengentem/pages/option.dart';
import 'package:greengentem/pages/payduesdetails.dart';
import 'package:greengentem/pages/paywinsdetails.dart';

import 'package:greengentem/pages/productdetails.dart';
import 'package:greengentem/pages/productspage.dart';
import 'package:greengentem/pages/profile.dart';
import 'package:greengentem/pages/register_as_page.dart';
import 'package:greengentem/pages/sign_up_buy.dart';

import 'package:greengentem/pages/welcomePage.dart';
import 'package:greengentem/screen/splashScreen.dart';
import 'package:greengentem/widgets/themes.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      // theme: MyTheme.themeData,

      theme: ThemeData(fontFamily: 'Dm Sans'),
      darkTheme: MyTheme.darkTheme,
      // initialRoute: "/login",
      routes: {
        "/": (context) => SplashPage(duration: 3, goToPage: WelcomePage()),
        "/welcome": (context) => WelcomePage(),
        "/collab": (context) => Collab(),
        "/login": (context) => LoginPage(),
        "/aboutus": (context) => AboutUs(),
        "/registerAsPage": (context) => RegisterAsPage(),
        "/signUpBuy": (context) => RealSignUpPageBuy(),
        "/contactUs": (context) => ContactUs(),
        "/option": (context) => Option(),
        "/profile": (context) => Profile(),
        ProductsPage.id: (context) => ProductsPage(),
        AllProduct.id: (context) => AllProduct(),
        ProductsDetails.id: (context) => ProductsDetails(),
        BuyHistoryDetails.id: (context) => BuyHistoryDetails(),
        SellHistoryDetails.id: (context) => SellHistoryDetails(),
        PayWinsDetails.id: (context) => PayWinsDetails(),
        PayDueDetails.id: (context) => PayDueDetails(),
        LiveDeliveryTracking.id: (context) => LiveDeliveryTracking(),
        LiveCollectionTracking.id: (context) => LiveCollectionTracking(),
      },
    );
  }
}
