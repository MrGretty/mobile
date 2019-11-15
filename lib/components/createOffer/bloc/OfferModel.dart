class OfferModel {
  int operation;
  String currency;
  String basis;

  OfferModel({this.operation, this.currency, this.basis});

  List<Object> get props => [operation, currency, basis];

  factory OfferModel.initial() {
    return OfferModel(operation: null, currency: '', basis: '');
  }

  void setFields({int operation, String currency, String basis}) {
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
