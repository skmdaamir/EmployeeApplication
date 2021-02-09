import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SampleApp extends StatefulWidget {
  @override
  _SampleAppState createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _displayName = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            key: _formKey,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _displayName,
                      decoration: const InputDecoration(
                        labelText: "Full Name",
                      ),
                      validator: (String val) {
                        if (val.isEmpty) {
                          return "Please Enter Some text";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                      ),
                      validator: (String val) {
                        if (val.isEmpty) {
                          return "Please Enter Some text";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                      ),
                      validator: (String val) {
                        if (val.isEmpty) {
                          return "Please Enter Some text";
                        }
                        return null;
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: OutlineButton(
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            _registeAccount();
                          }
                        },
                        child: Text("Register"),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  void _registeAccount() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text))
        .user;

    if (user != null) {
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _displayName.text);
      final user1 = _auth.currentUser;
    }
  }
}
