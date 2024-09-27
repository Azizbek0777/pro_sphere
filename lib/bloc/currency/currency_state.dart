part of 'currency_bloc.dart';

@immutable
abstract class CurrencyState {
  List<Object> get props => [];
}

class CurrencyInitial extends CurrencyState {}

class CurrencyLoading extends CurrencyState {}

class CurrencyLoaded extends CurrencyState {
  final CurrencyResponse? currencyResponse;

  CurrencyLoaded({this.currencyResponse});
}

class CurrencyFail extends CurrencyState {}
