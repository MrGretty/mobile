import 'package:bloc/bloc.dart';
import 'package:Tradomatic/components/createOffer/OfferState.dart';
import 'package:Tradomatic/components/createOffer/OfferEvents.dart';

class OfferBloc extends Bloc<OfferEvents, OfferState> {
  @override
  OfferState get initialState => OfferStateAction();

  @override
  Stream<OfferState> mapEventToState(OfferEvents event) async* {
    if (event is UpdateOffer) {
      yield OfferStateCurrencyBasis();
    }
  }
}
