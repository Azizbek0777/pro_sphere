import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pro_sphere/model/currency_response.dart';

import '../../repository/repository.dart';

part 'currency_event.dart';

part 'currency_state.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  CurrencyBloc() : super(CurrencyInitial()) {
    Repository repository = Repository();

    on<GetCurrencyEvent>(
      (event, emit) async {
        emit(CurrencyInitial());
        await repository.getCurrency().then(
          (value) {
            if (value?.statusCode != null && value?.statusCode as int > 299) {
              emit(CurrencyFail());
            } else {
              emit(CurrencyLoaded(currencyResponse: CurrencyResponse.fromJson(value?.data)));
            }
          },
        );
      },
    );
  }
}
