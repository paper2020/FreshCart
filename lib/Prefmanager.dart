import 'package:shared_preferences/shared_preferences.dart';

class Prefmanager {
  static final baseurl="http://13.234.186.200";
  static setToken (var token)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('token', token);
  }
  static Future<String>  getToken ()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();


    return prefs.getString('token');
  }
  static Future<void> clear()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }

}