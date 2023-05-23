part of '../product_screen_view.dart';

class ProductCategoryWidget extends ViewModelWidget<ProductScreenViewModel> {
  const ProductCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final choice = categories[index];
                return ChoiceChip(
                  padding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.only(right: 24.w),
                  elevation: 0,
                  label: Text(choice),
                  selectedColor: kWhiteColor,
                  backgroundColor: kWhiteColor,
                  labelStyle: viewModel.selectedTypeIndex == index
                      ? kAmulya14Regular.copyWith(color: kSecondOrangeColor)
                      : kAmulya14Regular.copyWith(color: kTextColor40),
                  selected: viewModel.selectedTypeIndex == index,
                  onSelected: (value) {
                    viewModel.selectChips(value, index);
                  },
                );
              }),
        ),
      ],
    );
  }
}
