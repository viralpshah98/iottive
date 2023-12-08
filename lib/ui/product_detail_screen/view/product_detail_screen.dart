import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:iottive/api/repository/models/product_response_model/product_response_model.dart';
import 'package:iottive/ui/product_detail_screen/product_detail_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  static String route = '/productDetailScreen';

  ProductDetailScreen({super.key});

  final ProductResponseModel? productResponseModel =
      Get.arguments as ProductResponseModel?;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductDetailBloc>(
      create: (context) => ProductDetailBloc(),
      child: ProductDetailView(
        productResponseModel:
            productResponseModel ?? const ProductResponseModel(),
      ),
    );
  }
}
