import 'package:flutter/cupertino.dart';

import '../Model/promotionModel.dart';

class Promotion with ChangeNotifier{
    List<PromotionModel> _promotionList = [
       PromotionModel(id: "p100",discountPercent: 40, description: "it's 5 years anniversary of the application", title: "anniversary")
    ];

    List<PromotionModel> get items{
      return [..._promotionList];
    }
    void addPromotion(){
      //_promotionList.add();
      notifyListeners();
    }
}