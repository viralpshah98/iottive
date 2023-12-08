part of 'product_list_bloc.dart';

abstract class ProductListEvent extends Equatable {
  const ProductListEvent();

  @override
  List<Object?> get props => [];
}

class GetOrderHistoryListEvent extends ProductListEvent {
  const GetOrderHistoryListEvent();
}

class OrderHistoryListApiResponseEvent extends ProductListEvent {
  const OrderHistoryListApiResponseEvent({required this.baseResponseModel});

  final BaseResponseModel baseResponseModel;
}

class SearchEvent extends ProductListEvent {
  const SearchEvent({required this.searchText});

  final String searchText;
}
