import 'package:flutter/material.dart';
import 'package:positive_af/database_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                padding: const EdgeInsets.only(top: 1, bottom: 1),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(234, 255, 255, 255),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Login",
                      textAlign: TextAlign.center,
                      // add custom font
                      // add moto
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Container(
                      child: TextFormField(
                        controller: _emailField,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'something@gmail.com',
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Container(
                      child: TextFormField(
                        controller: _passwordField,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      child: RawMaterialButton(
                        // fill color
                        fillColor: Colors.grey,
                        elevation: 0.0,
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        onPressed: () async {
                          bool shouldNavigate = await UserLoginIn(
                              _emailField.text, _passwordField.text);
                        },
                        child: const Text("Login"),
                      ),
                    ),
                    Container(
                        // add sign in with Google
                        ),
                    Row(
                      children: <Widget>[
                        const Text("Don't have account?"),
                        TextButton(
                          child: const Text(
                            'Sign Up',
                          ),
                          onPressed: () {
                            //signup screen
                            // add route to sign up page
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const SignUpPage()),
                            // );
                          },
                        ),
                        TextButton(
                          child: const Text("Forgot Password?"),
                          onPressed: () {
                            // add route to forgot password page
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
