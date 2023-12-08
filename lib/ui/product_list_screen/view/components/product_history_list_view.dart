import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iottive/api/repository/models/order_history_response_model/order_history_response_model.dart';
import 'package:iottive/ui/product_detail_screen/product_detail_screen.dart';

class ProductHistoryListView extends StatelessWidget {
  const ProductHistoryListView(
      {super.key, required this.orderHistoryResponseModel});

  final OrderHistoryResponseModel orderHistoryResponseModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(keepScrollOffset: false),
      key: const ObjectKey('product-list-key'),
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: orderHistoryResponseModel.product?.length,
      itemBuilder: (context, productIndex) {
        final productItem = orderHistoryResponseModel.product?[productIndex];
        return InkWell(
          onTap: () => Get.toNamed(
            ProductDetailScreen.route,
            arguments: productItem,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.withOpacity(0.5),
              // color: Colors.red,
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            height: 100,
            width: 100,
            child: CachedNetworkImage(
              imageUrl: orderHistoryResponseModel
                      .product?[productIndex].productOtherUrl ??
                  '',
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.contain,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.5), BlendMode.colorBurn)),
                ),
              ),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        );
      },
    );
  }
}
