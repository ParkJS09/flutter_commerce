import 'package:flutter/material.dart';
import 'package:flutter_commerce/presentation/routes/route_path.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splah Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Splash Page',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () => context.push(RoutePath.home),
                child: const Text('go home'))
          ],
        ),
      ),
    );
  }
}
