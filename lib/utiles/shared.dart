import 'package:shared_preferences/shared_preferences.dart';

class Shr {
  Future<void> CreateShr(String email, String password) async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("e1", email);
    shr.setString("p1", password);
  }
  Future<Map> readShr()async{
    SharedPreferences shr =await SharedPreferences.getInstance();
    String? email = shr.getString("e1");
    String? password = shr.getString("p1");

    Map m1 ={"e1":email,"p1":password};
     return m1;

  }
}
