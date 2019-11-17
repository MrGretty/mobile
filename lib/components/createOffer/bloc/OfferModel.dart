class OfferModel {
  int operation, basis;
  String currency;

  OfferModel({this.operation, this.currency, this.basis});

  List<Object> get props => [operation, currency, basis];

  factory OfferModel.initial() {
    return OfferModel(operation: null, currency: '', basis: null);
  }

  
  void setFields({int operation, String currency, int basis}) {
    this
      ..operation = operation ?? this.operation
      ..currency = currency ?? this.currency
      ..basis = basis ?? this.basis;
  }

  @override
  String toString() {
    return '$operation lalala';
  }
}
