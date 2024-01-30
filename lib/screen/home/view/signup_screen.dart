import 'package:flutter/material.dart';
import 'package:shared_prefrence/utiles/shared.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              const Text("SIGN UP ", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtemail,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),

                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: txtpassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),

                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  var email = txtemail.text;
                  var password = txtpassword.text;
                  Shr shr = Shr();
                  shr.CreateShr(email, password);
                  Navigator.pop(context);
                },
                child: const Text("Sign UP"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Alaready Account? Sign In",
                    style: TextStyle(color: Colors.blue.shade200)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
