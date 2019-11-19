library Constants;

class Basises {
  static const int FOB = 1;
  static const int CPT = 2;
  static const int EXW = 4;
  static const int FCA = 8;
  static const int DAP = 16;
  static const int DAF = 32;
}

class OfferOperation {
  static const int SELLING = 1;
  static const int BUYING = 2;
  static const int AUCTION = 3;

  static toArray() {
    return [AUCTION, SELLING, BUYING];
  }
}

class Commodities {
  static const int CRUDE_SUNFLOWER_OIL = 1;
  static const int FEED_WHEAT = 2;
  static const int MILLED_WHEAT_2CLASS = 5;
  static const int MILLED_WHEAT_3CLASS = 6;
  static const int CORN = 8;
  static const int RAPESEED_GMO = 17;
  static const int RAPESEED_NO_GMO = 18;
  static const int SOYBEANS_GMO = 33;
  static const int SOYBEANS_NO_GMO = 34;
  static const int BARLEY = 64;
  static const int SUNFLOWER_SEED = 128;
  static const int HUSK = 256;
  static const int SUNFLOWER_MEAL = 51;

  static toArray() {
    return [
      CRUDE_SUNFLOWER_OIL,
      FEED_WHEAT,
      MILLED_WHEAT_2CLASS,
      MILLED_WHEAT_3CLASS,
      CORN,
      RAPESEED_GMO,
      RAPESEED_NO_GMO,
      SOYBEANS_GMO,
      SOYBEANS_NO_GMO,
      BARLEY,
      SUNFLOWER_SEED,
      HUSK,
      SUNFLOWER_MEAL,
    ];
  }
}

class Currencies {
  static const String USD = 'USD';
  static const String UAH = 'UAH';
}
