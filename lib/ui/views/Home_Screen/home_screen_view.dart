import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:storeload/ui/views/Home_Screen/home_screen_viewmodel.dart';
import 'package:storeload/ui/views/widgets/custom_text_button.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenViewModel>.reactive(
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 30,
              ),
              title: Text('${model.user.firstName} ${model.user.lastName}'),
              subtitle: Text(model.user.email),
              trailing: CustomTextButton(
                title: 'Logout',
                onTap: model.logout,
              ),
            )
          ],
        ),
      )),
      viewModelBuilder: () => HomeScreenViewModel(),
    );
  }
}
