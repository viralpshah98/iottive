import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iottive/ui/product_list_screen/product_list_screen.dart';

class OrderHistoryListView extends StatelessWidget {
  const OrderHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductListBloc, ProductListState>(
      buildWhen: (previous, current) =>
          previous.filteredOrderHistoryResponseModelList !=
          current.filteredOrderHistoryResponseModelList,
      builder: (context, state) {
        return state.filteredOrderHistoryResponseModelList.isNotEmpty
            ? ListView.builder(
                controller: ScrollController(keepScrollOffset: false),
                key: const ObjectKey('order-history-list-key'),
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.all(8),
                itemCount: state.filteredOrderHistoryResponseModelList.length,
                itemBuilder: (itemBuilderContext, index) {
                  final orderHistoryItem =
                      state.filteredOrderHistoryResponseModelList[index];
                  return Card(
                    color: const Color(0xffebeef7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Flex(
                      direction: Axis.vertical,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 22,
                            right: 22,
                            left: 22,
                          ),
                          child: Flex(
                            direction: Axis.vertical,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order ID : ${orderHistoryItem.orderID ?? ' '}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Date : ${orderHistoryItem.date ?? ' '}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Amount : ${orderHistoryItem.paidAmount ?? ' '}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Status : ${orderHistoryItem.paymentStatus ?? ' '}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'No. of products : ${orderHistoryItem.product?.length.toString() ?? '0'}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 3,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          height: 85,
                          child: (orderHistoryItem.product?.isNotEmpty ?? false)
                              ? ProductHistoryListView(
                                  orderHistoryResponseModel: orderHistoryItem)
                              : const SizedBox.shrink(),
                        ),
                      ],
                    ),
                  );
                },
              )
            : const Center(
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.purple,
                      size: 42,
                    ),
                    Text(
                      'No data found',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
