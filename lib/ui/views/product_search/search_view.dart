import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/views/product_search/search_view_model.dart';
import 'package:storeload/ui/views/widgets/product_card.dart';

import '../../utils/colors.dart';
import '../widgets/app_spinner.dart';

class ProductSearch extends SearchDelegate {


  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: (() => SearchViewModel()),
      onViewModelReady: (model) => model.getProductList(query),
      builder: ((context, model, child) {
        return model.isBusy
            ? const Center(child: AppSpinner())
            : model.productList.isEmpty
            ? const Center(child: EmptyServerWidget())
            : const ServerListNotEmpty();
      }),
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: kBackgroundColor,
        ),
      ),
      primaryColor: Colors.black,
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.black),
      primaryTextTheme: theme.textTheme,
      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
      ),);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: (() => SearchViewModel()),
      //onViewModelReady: (model) => model.getProductList(query),
      builder: ((context, model, child) {
        final suggestions1 = model.productList;
        final suggestions = query.isEmpty
            ? model.productList
            : suggestions1
            .where((element) => element.name.toLowerCase().contains(query))
            .toList();
        return suggestions.isEmpty
            ? const Center(child: Text('No results found'))
            : Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            itemCount: suggestions.length,
            separatorBuilder: (context, index) =>  SizedBox(height: 10.h,),
            itemBuilder: (context, index) {
              return ProductCard(
                productImage: suggestions[index].image,
                productName: suggestions[index].name,
                productPrice:suggestions[index].price.toString(),
                onTap: () {  },);
            },
          ),
        );
      }),
    );
  }


}

class ServerListNotEmpty extends ViewModelWidget<SearchViewModel> {
  const ServerListNotEmpty({super.key});

  @override
  Widget build(BuildContext context, SearchViewModel viewModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: viewModel.productList.length,
        itemBuilder: (context, index) {
          final product = viewModel.productList[index];
          return ProductCard(
            productImage: product.image,
            productName: product.name,
            productPrice:product.price.toString(),
            onTap: () {  },);
        },
      ),
    );
  }
}

class EmptyServerWidget extends StatelessWidget {
  const EmptyServerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'You do not have any servers with this name yet',
          //  style: kBodyRegularTextStyle,
          ),
        ),
      ],
    );
  }


}