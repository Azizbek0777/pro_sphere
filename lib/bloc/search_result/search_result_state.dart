part of 'search_result_bloc.dart';

@immutable
abstract class SearchResultState {}

class SearchResultInitial extends SearchResultState {}

class SearchResultLoaded extends SearchResultState {
  final SearchResultResponse? searchResultResponse;

  SearchResultLoaded({this.searchResultResponse});
}

class SearchResultFail extends SearchResultState {}
