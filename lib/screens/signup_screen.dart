import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home_screen.dart';
import 'package:flutter_project/widgets/custom_buttom.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignUpState();
}

class _SignUpState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNamecontroller = TextEditingController();
  TextEditingController lastNamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        toolbarHeight: 40,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: firstNamecontroller,
                    decoration: const InputDecoration(labelText: 'First Name'),
                    validator: (value) {
                      if (value == null || value.length > 3) {
                        return " Enter valid First Name ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: lastNamecontroller,
                    decoration: const InputDecoration(labelText: 'Last Name'),
                    validator: (value) {
                      if (value == null || value.length > 3) {
                        return " Enter valid Last Name ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value == null || value.contains("@") == false) {
                        return " Enter valid Email ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return " Enter valid Password ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Confirmation Password'),
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return " Enter valid Re-Password ";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 18.0),
                MyCustomButton(
                  buttonLabel: "Sign Up",
                  onTap: () async {
                     bool result = await  fireBaseSignup(emailcontroller.text, passwordcontroller.text);  
                         if(result == true) {
                    if (_formKey.currentState!.validate()) {
                       final SharedPreferences prefs = await SharedPreferences.getInstance();
                      await prefs.setString('email', emailcontroller.text);

                    Navigator.push(
                               context,
                             MaterialPageRoute(
                              builder: (context) =>  HomeScreen(
                              email: emailcontroller.text,
                             )),
                                  );
                    }
                     } else {ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text('Sign up Failed')),
                          );}

                  },
                ),
                const SizedBox(height: 18.0),
                MyCustomButton(
                  buttonLabel: "Have An Account? Sign In",
                  onTap: () {
                    Navigator.maybePop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


     Future<bool> fireBaseSignup(String email, String password) async {
    try {
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
  );
  if(userCredential.user != null) {
    return true;
  }
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
  }
      return false;
 }
}

