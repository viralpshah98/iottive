import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iottive/enum/enum.dart';
import 'package:iottive/ui/product_list_screen/product_list_screen.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  late ProductListBloc productListBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productListBloc = context.read<ProductListBloc>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            fontSize: 26,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<ProductListBloc, ProductListState>(
          buildWhen: (previous, current) =>
              previous.apiStatus != current.apiStatus,
          builder: (context, state) {
            return Flex(
              direction: Axis.vertical,
              children: [
                const Divider(
                  thickness: 2,
                  color: Colors.purple,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      productListBloc.add(SearchEvent(searchText: value));
                    },
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      filled: true,
                      fillColor: const Color(0xffebeef7),
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: state.apiStatus == ApiStatus.loading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const OrderHistoryListView(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
