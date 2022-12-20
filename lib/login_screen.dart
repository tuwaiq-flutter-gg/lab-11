import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:login_design/provider/locale_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final formKeyuser = GlobalKey<FormState>();
  final formKeypass = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    final locale = provider.locale ?? Localizations.localeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/login.jpg'),
                  height: 200.0,
                  width: double.infinity,
                ),
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.login,
                    style: TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.loginSubText,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                // Fields
                Form(
                  key: formKeyuser,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "is empty";
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      filled: true,
                      hintText: "example@example.com",
                      hintStyle: TextStyle(color: Colors.amber),
                      // contentPadding:
                      //     const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                      focusColor: Colors.amber,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(
                          color: Colors.amber,
                        ),
                      ),
                      labelText: AppLocalizations.of(context)!.email,
                      labelStyle: TextStyle(color: Colors.amber),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15.0,
                ),

                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return AppLocalizations.of(context)!
                          .password_is_too_short;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.red, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    filled: true,
                    hintText: "******",
                    hintStyle: TextStyle(color: Colors.amber),
                    focusColor: Colors.amber,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: Colors.amber,
                      ),
                    ),
                    labelText: AppLocalizations.of(context)!.password,
                    labelStyle: TextStyle(color: Colors.amber),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.amber,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.amber,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (formKeyuser.currentState!.validate()) ;
                        },
                        child: Text(
                          AppLocalizations.of(context)!.forgetPassword,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.amber,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.signUp,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        AppLocalizations.of(context)!.terms,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                      )),
                ),

                const SizedBox(height: 40.0),
                MaterialButton(
                  onPressed: () {
                    if (provider.locale == Locale("ar")) {
                      provider.setLocale(Locale("en"));
                    } else {
                      provider.setLocale(Locale("ar"));
                    }
                  },
                  height: 60.0,
                  color: Colors.grey,
                  child: new Text(
                    AppLocalizations.of(context)!.language,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3,
                    ),
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
