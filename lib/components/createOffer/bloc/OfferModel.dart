class OfferModel {
  int operation;

  OfferModel({this.operation});

  List<Object> get props => [operation];

  factory OfferModel.initial() {
    return OfferModel(
      operation: null, 
    );
  }

  void setFields({int operation}) {
    this..operation = operation ?? this.operation;
  }

  @override
  String toString() {
    return '$operation lalala';
  }
}
