import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxString _categroy = ''.obs;

  String get categoryValue => _categroy.value;

  set updateCategory(String value) {
    _categroy.value = value;
  }

  RxString _title = ''.obs;

  String get titleValue => _title.value;

  set updateTitle(String value) {
    _title.value = value;
  }
}
