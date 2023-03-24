import 'package:shared_preferences/shared_preferences.dart';

class Shr {

  void create(String email,String password)
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString("e1", email);
    sharedPreferences.setString("p1", password);

  }

  Future<Map> read()
  async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String? email = sharedPreferences.getString("e1");
    String? pass = sharedPreferences.getString("p1");

    Map m1 = {"e1":email,"p1":pass};

    return m1;
  }
}