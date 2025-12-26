import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/2_application/core/services/theme_service.dart';
import 'package:flutter_clean_architecture/2_application/pages/advice/widgets/advice_field.dart';
import 'package:flutter_clean_architecture/2_application/pages/advice/widgets/custom_button.dart';
import 'package:flutter_clean_architecture/2_application/pages/advice/widgets/error_message.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Advicer', style: themeData.textTheme.headlineLarge),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 50.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ErrorMessage(
                  message: 'Something went wrong! Please try again later.',
                  /*
                  AdviceField(
                  advice: 'Your Advice is writing for you!',)
                  */
                  /*CircularProgressIndicator(
                  color: themeData.colorScheme.secondary,)
                  */

                  /*Text(
                  'Your Advice is writing for you!',
                  style: themeData.textTheme.headlineLarge,)

                ),*/
                ),
              ),
            ),
            SizedBox(height: 200, child: Center(child: CustomButton())),
          ],
        ),
      ),
    );
  }
}
