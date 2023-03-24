import 'package:flutter/material.dart';
import 'package:shared_preference/utils/shared_Preference.dart';

class signIn_screen extends StatefulWidget {
  const signIn_screen({Key? key}) : super(key: key);

  @override
  State<signIn_screen> createState() => _signIn_screenState();
}

class _signIn_screenState extends State<signIn_screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Sigh In Screen"),
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
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async{
                    String usremail = txtemail.text;
                    String usrpassword = txtpassword.text;

                    Shr shr = Shr();
                    Map m1 = await shr.read();

                    if (usremail == m1['e1'] && usrpassword == m1['p1']) {
                      Navigator.pushNamed(context, 'success');
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Invalid ID or Password")));
                    }
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal.shade800),
                ),
                SizedBox(height: 25,),
                TextButton(
                    onPressed: () async {

                      Navigator.pushNamed(context, 'signUp');
                    },
                    child: Text(
                      "Create an Account? SignUp",
                      style: TextStyle(color: Colors.teal, fontSize: 15),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
