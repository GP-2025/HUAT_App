import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../theming/colors.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorManager.kSecondaryColor,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: DropdownButton<Locale>(
              value: Locale('en'),
              icon: Icon(Icons.translate, color: Colors.white),
              dropdownColor: colorManager.kGrayColor,
              borderRadius: BorderRadius.circular(24),
              onChanged: (Locale? newLocale) {},
              items: [
                DropdownMenuItem(
                  value: Locale('en'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('English', style: TextStyle(color: colorManager.kGrayColor)),
                  ),
                ),
                DropdownMenuItem(
                  value: Locale('ar'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Arabic', style: TextStyle(color: colorManager.kGrayColor)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        color: colorManager.kSecondaryColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Image.asset('assets/images/logo.png', height: 200),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.6),
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: 500,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  S.of(context).login_Welcome,
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: colorManager.kikiBlack,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: S.of(context).login_Email,
                                  labelStyle: TextStyle(color: colorManager.kikiBlack),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: colorManager.kikiBlack,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: colorManager.kikiBlack),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: S.of(context).login_Password,
                                  labelStyle: TextStyle(color: colorManager.kikiBlack),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: colorManager.kikiBlack,
                                  ),
                                  border: InputBorder.none,
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: colorManager.kikiBlack),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: colorManager.huatDarkBlue,
                                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: Text(
                                  S.of(context).login_Login,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  S.of(context).login_Forgot_password,
                                  style: TextStyle(color: colorManager.huatDarkBlue),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
