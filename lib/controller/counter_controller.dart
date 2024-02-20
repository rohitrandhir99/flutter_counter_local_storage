import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CounterController extends GetxController {
  // counter variable
  RxInt number = 0.obs;

  // local storage
  final _storage = GetStorage();

  // when the app loads
  @override
  void onInit() {
    if (_storage.hasData("count")) {
      number.value = _storage.read("count") ?? 0;
    }
    super.onInit();
  }

  // increase count
  increaseCount() {
    number.value++;
    // update the local storage
    _storage.write("count", number.value);
  }

  // decrease count
  decreaseCount() {
    // stop decrementing if the number reaches zero
    if (number.value > 0) {
      number.value--;
    }
    // update the local storage
    _storage.write("count", number.value);
  }
}
