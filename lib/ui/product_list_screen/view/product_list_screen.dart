import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iottive/ui/product_list_screen/product_list_screen.dart';

class ProductListScreen extends StatelessWidget {
  static String route = '/productListScreen';

  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductListBloc>(
      create: (context) =>
          ProductListBloc()..add(const GetOrderHistoryListEvent()),
      child: const ProductListView(),
    );
  }
}
