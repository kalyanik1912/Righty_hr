import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rightly_hr_flutter/screens/home/NavigationBarApp.dart';
import 'package:rightly_hr_flutter/utils/shared_preferences_helper.dart';
import 'apis/api_service.dart';
import 'custom_theme/theme_data.dart';
import 'utils/pref_utils.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: customThemeData,
      debugShowCheckedModeBanner: false,
      title: 'RightlyHR',
      home: NavigationBarApp(),
      //home: MyLoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FlipCardState> cardKey =
      GlobalKey<FlipCardState>(); // Add a GlobalKey
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    var assetsImage = const AssetImage('assets/images/snad_logo_vertical.png');
    var image = Image(image: assetsImage, fit: BoxFit.cover);

    return Scaffold(
      body: Center(
        child: Wrap(
          children: [
            Card(
              color: Colors.white,
              elevation: 10.0,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(child: image),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login to your account using your organisation mail id",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: const Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        /*Wrap(
          children: [
            FlipCard(
              key: cardKey,
              // Assign the GlobalKey
              flipOnTouch: false,
              // Disable flip on touch for manual control
              direction: FlipDirection.HORIZONTAL,
              // Specify flip direction
              front: Card(
                color: Colors.white,
                elevation: 10.0,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: image),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Login to your account using your organisation mail id",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Flip the card when "Login" is clicked
                          cardKey.currentState!.toggleCard();
                        },
                        child: const Text("Login"),
                      ),
                    ],
                  ),
                ),
              ),
              back: Card(
                // This is the back of the card, add your content here
                color: Colors.blue,
                elevation: 10.0,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "You are logged in!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to the next screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestScreen(),
                            ),
                          );
                        },
                        child: const Text("Continue"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),*/
      ),
    );
  }

  /*//Sign Up
  login() async {
    var body = {
      "emailid": "aneesa.shaik@snaddevelopers.com",
    };
    setState(() {
      loading = true;
    });
    var res = await ApiService.loginWithEmail({
      "emailid": "aneesa.shaik@snaddevelopers.com",
    }, context);
    setState(() {
      loading = false;
    });
    // if (res!.type == Strings.success) {
    Utils.displaySuccessTopFlushBar("Login successful", context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NavigationBarApp(),
      ),
    );
    // } else {
    //   Utils.displayErrorTopFlushBar(res.message, context);
    // }
  }*/
  //get profile data
  login() async {
    setState(() {
      loading = true;
    });

    String emailId =
        await SharedPreferencesHelper.getStringPreference('emailId');

    var res = await ApiService.loginWithEmail(
        context, "aneesa.shaik@snaddevelopers.com");
    setState(() {
      loading = false;
    });
    if (res?.empdatum.toString() != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationBarApp(),
        ),
      );
    }
    // if (res!.type == Strings.success) {
    //   setState(() {
    // personalInfo = res.empdatum;
    // });
    // } else {
    //   Utils.displayErrorTopFlushBar("Some thing went wrong", context);
    // }
  }
}

class MyLoginPage extends StatelessWidget {
  final FlutterAppAuth appAuth = FlutterAppAuth();

  Future<void> _login() async {
    try {
      final AuthorizationTokenResponse? result = await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          '9a09dcfb-a22f-4fdf-a014-38990e558d80',
          'msauth://com.snad.hrms_android/0IFWZjvtpS3QRiuTHjIhACaY0%2Fw%3D',
          serviceConfiguration: AuthorizationServiceConfiguration(
            authorizationEndpoint:'https://login.microsoftonline.com/common',
            tokenEndpoint: 'https://login.microsoftonline.com/common/token',
          ),
          promptValues: ['login'],
        ),
      );


      print('Token: ${result?.accessToken}');
    } catch (e) {
      print('Error during login: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Microsoft Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _login,
          child: Text('Login with Microsoft'),
        ),
      ),
    );
  }
}

