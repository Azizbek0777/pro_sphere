part of 'currency_bloc.dart';

@immutable
abstract class CurrencyEvent extends Emittable {}

class GetCurrencyEvent extends CurrencyEvent {
  @override
  void emit(Object? state) {
    // TODO: implement emit
  }
}
