import 'package:get/get.dart';

class TapController extends GetxController {
  var _x = 0;
  var list = [];
  RxInt _total = 0.obs;
  int get x => _x;
  RxInt _y = 0.obs;
  int get y => _y.value;
  int get total => _total.value;
  void IncreaseY() {
    _y++;
    Total();
  }

  void IncreaseX() {
    _x++;
    Total();
    update();
  }

  void DecreaseX() {
    _x--;
    Total();
    update();
  }

  void Total() {
    _total.value = _x + _y.value;
  }

  void saveTotal(int x) {
    list.add(x);
  }
}
