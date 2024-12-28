import 'package:flutter/material.dart';
import 'package:newapp/components/my_buttons.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(25),
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Just do it',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Brand new shoes are available here,go check out',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                  onTap: () => Navigator.pushNamed(context, '/shop_page'),
                  child: const Icon(Icons.arrow_forward))
            ],
          ),
        ),
      ),
    );
  }
}
