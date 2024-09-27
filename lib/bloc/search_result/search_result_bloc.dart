import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pro_sphere/model/currency_response.dart';
import 'package:pro_sphere/model/search_result_response.dart';
import 'package:pro_sphere/repository/repository.dart';

part 'search_result_event.dart';

part 'search_result_state.dart';

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc() : super(SearchResultInitial()) {
    Repository repository = Repository();
    on<SendSearchResultEvent>(
      (event, emit) async {
        emit(SearchResultInitial());
        await repository.searchResult(limit: 20, page: 1, query: event.searchText).then(
          (value) {
            if (value?.statusCode != null && value?.statusCode as int > 299) {
              emit(SearchResultFail());
            } else {
              emit(SearchResultLoaded(searchResultResponse: SearchResultResponse.fromJson(value?.data)));
            }
          },
        );
      },
    );
  }
}
