import 'package:ecommerce_app/core/view_model/auth.dart';
import 'package:get/get.dart';

class Binding extends  Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => AuthViewModel()) ;
  }
}