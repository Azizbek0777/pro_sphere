part of 'search_result_bloc.dart';

@immutable
abstract class SearchResultEvent extends Emittable {}

class SendSearchResultEvent extends SearchResultEvent {
  final String? searchText;

  SendSearchResultEvent({this.searchText});

  @override
  void emit(Object? state) {
    // TODO: implement emit
  }
}
