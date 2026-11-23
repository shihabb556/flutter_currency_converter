import 'package:flutter/material.dart';
import 'widget/Custom_ElevatedButton.dart';
import 'widget/Custom_Text_FromField.dart';
import 'widget/header_widget.dart';

class Currencyconverterscreen extends StatefulWidget {
  const Currencyconverterscreen({super.key});

  @override
  State<Currencyconverterscreen> createState() => _CurrencyconverterscreenState();
}

class _CurrencyconverterscreenState extends State<Currencyconverterscreen> {
  late final TextEditingController controller;
  late final GlobalKey<FormState> key;
  double amount = 0;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    key = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void submit() {
    if (key.currentState!.validate()) {
      debugPrint("Nothing Wrong");
      amount = double.parse(controller.text.trim());
      amount *= 122;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: HeaderWidget(amount: '$amount'),
              ),
              const SizedBox(height: 20),
              Form(
                key: key,
                child: Custom_TextFromField(textEditingController: controller),
              ),
              const SizedBox(height: 20),
              Custom_ElevatedButton(
                buttonText: 'Convert',
                onPressed: submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
