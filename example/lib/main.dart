import 'package:brand_logo_loading/brand_logo_loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brand Logo Loading',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {

  /// This methods enables the loading
  _showSingleAnimationDialog(BuildContext context) {
    BrandLogoLoading.balance(
        context: context,
        animationType: Curves.fastOutSlowIn,
        logo: 'assets/logo.png',
        logoBackdropColor: Colors.transparent,
        durationInMilliSeconds: 900,
    );
  }

  /// This method disables the loading
  _hideLoading(BuildContext context) {
    BrandLogoLoading.dismissLoading(context: context);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Brand Logo Loading'),
        ),
        body: InkWell(
          onTap: () => _showSingleAnimationDialog(
            context,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      );
}
