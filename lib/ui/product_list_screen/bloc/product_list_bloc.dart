import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:iottive/api/repository/models/base_response_model/base_response_model.dart';
import 'package:iottive/api/repository/models/order_history_response_model/order_history_response_model.dart';
import 'package:iottive/api/repository/models/user_response_model/user_response_model.dart';
import 'package:iottive/api/repository/user_repository/user_repository.dart';
import 'package:iottive/enum/enum.dart';
import 'package:iottive/utils/get_storage_utils/get_storage_utils.dart';

part 'product_list_event.dart';

part 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc() : super(const ProductListState()) {
    on<ProductListEvent>(_mapEventToState);
    _userRepository = UserRepository();
    _userRepository.orderHistoryStream.listen((event) {
      add(OrderHistoryListApiResponseEvent(baseResponseModel: event));
    });
  }

  late UserRepository _userRepository;

  void _mapEventToState(
      ProductListEvent event, Emitter<ProductListState> emit) {
    if (event is GetOrderHistoryListEvent) {
      return _mapGetOrderHistoryListEventToState(event, emit);
    } else if (event is OrderHistoryListApiResponseEvent) {
      return _mapOrderHistoryListApiResponseEventToState(event, emit);
    } else if (event is SearchEvent) {
      return _mapSearchEventToState(event, emit);
    }
  }

  void _mapGetOrderHistoryListEventToState(
      GetOrderHistoryListEvent event, Emitter<ProductListState> emit) async {
    final userId = await GetStorageUtils.getInt(kUserId, -1);
    final authToken = await GetStorageUtils.getString(kAuthorizationToken, '');
    _userRepository.orderHistory(
      authToken: authToken,
      userId: userId,
    );
  }

  void _mapOrderHistoryListApiResponseEventToState(
      OrderHistoryListApiResponseEvent event, Emitter<ProductListState> emit) {
    emit(state.copyWith(apiStatus: event.baseResponseModel.apiStatus));
    if (event.baseResponseModel.apiStatus == ApiStatus.success) {
      final userResponseModel =
          UserResponseModel.fromJson(event.baseResponseModel.data);
      if ((userResponseModel.success ?? false) &&
          userResponseModel.data != null) {
        emit(
          state.copyWith(
            orderHistoryResponseModelList: userResponseModel.data,
            filteredOrderHistoryResponseModelList: userResponseModel.data,
          ),
        );
      } else if (userResponseModel.message != null) {
        GetSnackBar(
          message: userResponseModel.message,
          duration: const Duration(seconds: 2),
        ).show();
      }
    } else if (event.baseResponseModel.apiStatus == ApiStatus.error) {
      final userResponseModel =
          UserResponseModel.fromJson(event.baseResponseModel.data);
      if (userResponseModel.message != null) {
        GetSnackBar(
          message: userResponseModel.message,
          duration: const Duration(seconds: 2),
        ).show();
      }
    } else if (event.baseResponseModel.apiStatus ==
        ApiStatus.somethingWentWrong) {
      const GetSnackBar(
        message: 'Something went wrong!',
        duration: Duration(seconds: 2),
      ).show();
    }
  }

  void _mapSearchEventToState(
      SearchEvent event, Emitter<ProductListState> emit) {
    List<OrderHistoryResponseModel> orderList =
        state.orderHistoryResponseModelList.map((e) {
      final product = e.product ?? [];
      return e.copyWith(
        product: product.where((element) {
          final productName = element.productName ?? '';
          return productName
              .toLowerCase()
              .contains(event.searchText.toLowerCase());
        }).toList(),
      );
    }).toList();
    final filteredList = orderList
        .where((element) => element.product?.isNotEmpty ?? false)
        .toList();
    emit(state.copyWith(filteredOrderHistoryResponseModelList: filteredList));
  }
}
