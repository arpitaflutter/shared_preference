import 'package:flutter/material.dart';
import 'package:shared_preference/utils/shared_Preference.dart';

class signUp_screen extends StatefulWidget {
  const signUp_screen({Key? key}) : super(key: key);

  @override
  State<signUp_screen> createState() => _signUp_screenState();
}

class _signUp_screenState extends State<signUp_screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Sigh Up Screen"),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtemail,
                  decoration: InputDecoration(
                    hintText: "Email: ",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtpassword,
                  decoration: InputDecoration(
                    hintText: "Password: ",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    var email = txtemail.text;
                    var password = txtpassword.text;

                    Shr shr = Shr();
                    shr.create(email, password);

                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade700),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "You have already an Account. SignIn",
                      style: TextStyle(color: Colors.teal, fontSize: 15),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
