part of 'product_list_bloc.dart';

class ProductListState extends Equatable {
  const ProductListState({
    this.apiStatus,
    this.orderHistoryResponseModelList = const [],
    this.filteredOrderHistoryResponseModelList = const [],
  });

  final ApiStatus? apiStatus;
  final List<OrderHistoryResponseModel> orderHistoryResponseModelList;
  final List<OrderHistoryResponseModel> filteredOrderHistoryResponseModelList;

  ProductListState copyWith({
    ApiStatus? apiStatus,
    List<OrderHistoryResponseModel>? orderHistoryResponseModelList,
    List<OrderHistoryResponseModel>? filteredOrderHistoryResponseModelList,
  }) {
    return ProductListState(
      apiStatus: apiStatus ?? this.apiStatus,
      orderHistoryResponseModelList:
          orderHistoryResponseModelList ?? this.orderHistoryResponseModelList,
      filteredOrderHistoryResponseModelList:
          filteredOrderHistoryResponseModelList ??
              this.filteredOrderHistoryResponseModelList,
    );
  }

  @override
  List<Object?> get props => [
        orderHistoryResponseModelList,
        filteredOrderHistoryResponseModelList,
        apiStatus,
      ];
}
