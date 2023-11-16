import 'package:get/get.dart';

class pageControllers extends GetxController {
  var index = 0.obs;
  pageIndex(int i) {
    index.value = i;
  }
}
