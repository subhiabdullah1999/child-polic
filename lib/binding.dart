import 'package:children_police/core/services.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(MyServices());
  }
}
