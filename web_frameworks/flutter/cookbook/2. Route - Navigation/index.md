 ### Create route in a seperate class

 ```dart
import 'package:get/get.dart';
import 'package:nhatngu/screens/screens.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: '/', page: () => Splash()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/test', page: () => TestScreen()),
    GetPage(name: '/chat', page: () => ChatRoom()),
    GetPage(name: '/profile', page: () => ProfileScreen()),
  ];

 ```
