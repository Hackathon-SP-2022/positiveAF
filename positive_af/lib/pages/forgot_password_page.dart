import 'package:flutter/material.dart';
import 'package:positive_af/database_service.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  _ForgotPassPageState createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/login1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right:10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(234, 255, 255, 255),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Reset Password",
                      textAlign: TextAlign.center,
                      // add custom font
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Indies',
                      ),
                      // add moto
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    const Text(
                      "A link will be sent to your email.",
                      textAlign: TextAlign.center,
                      // add custom font
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        // fontFamily: 'Indies',
                      ),
                      // add moto
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                      child: TextFormField(
                        controller: _email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                          // bool shouldNavigate =
                          // await DatabaseService.createAccount(_email.text, _password.text);
                        },
                        child: const Text("Reset"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextButton(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
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

