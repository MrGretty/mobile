class OfferModel {
  int operation, basis, commodity;
  String currency;

  OfferModel({this.operation, this.currency, this.basis, this.commodity});

  List<Object> get props => [operation, currency, basis, commodity];

  factory OfferModel.initial() {
    return OfferModel(
        operation: null, currency: '', basis: null, commodity: null);
  }

  void setFields({int operation, String currency, int basis, int commodity}) {
    this
      ..operation = operation ?? this.operation
      ..currency = currency ?? this.currency
      ..commodity = commodity ?? this.commodity
      ..basis = basis ?? this.basis;
  }

  @override
  String toString() {
    return '$operation lalala';
  }
}
