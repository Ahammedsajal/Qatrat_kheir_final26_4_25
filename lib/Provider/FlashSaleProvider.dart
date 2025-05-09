import 'package:customer/Model/FlashSaleModel.dart';
import 'package:flutter/cupertino.dart';

class FlashSaleProvider extends ChangeNotifier {
  List<FlashSaleModel> _saleList = [];
  List<FlashSaleModel> get saleList => _saleList;
  removeSaleList() {
    _saleList.clear();
    notifyListeners();
  }

  setSaleList(List<FlashSaleModel> flashSaleList) {
    _saleList = flashSaleList;
    notifyListeners();
  }

  removeIndexFromList(String id) {
    final int index = _saleList.indexWhere((element) => element.id == id);
    _saleList.removeAt(index);
    notifyListeners();
  }

  setDiffTime(int diff, String id, {String? isSaleOn}) {
    final int index = _saleList.indexWhere((element) => element.id == id);
    if (isSaleOn != null) {
      _saleList[index].status = isSaleOn;
    }
    _saleList[index].timeDiff = diff;
    notifyListeners();
  }
}
