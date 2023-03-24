import 'package:flutter/material.dart';
import 'package:shared_prefrence/utiles/shared.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          centerTitle: true,
          title:
              Text("SIGN IN ", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(size: 80),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  String userEmail = txtemail.text;
                  String userpassword = txtpassword.text;
                  Shr shr = Shr();
                  Map m1 = await shr.readShr();
                  if (userEmail == m1['e1'] && userpassword == m1['p1']) {
                    Navigator.pushNamed(context, 'welcome');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid Data"),
                      ),
                    );
                  }
                },
                child: Text("Sign In"),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Sign');
                },
                child: Text("Create an Account? Sign Up",
                    style: TextStyle(color: Colors.blue.shade200)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
