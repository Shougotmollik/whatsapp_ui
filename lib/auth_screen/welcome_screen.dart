import 'package:flutter/material.dart';
import 'package:whatsapp_ui/homeScreen/home_screen.dart';
import 'package:whatsapp_ui/utils/colors.dart';
import 'package:whatsapp_ui/utils/images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImagesPath.whatsappLogo),
            const SizedBox(height: 28),
            const Text(
              "Welcome To WhatsApp",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Read our",
                  style: TextStyle(
                    color: AppColors.onPrimaryColor.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    TextSpan(
                      text: " Privacy Policy.",
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      children: [
                        TextSpan(
                            text: 'Tap " Agree and continue" to accept the',
                            style: TextStyle(
                              color: AppColors.onPrimaryColor.withOpacity(0.5),
                            ),
                            children: const [
                              TextSpan(
                                text: " Privacy Policy.",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ])
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      "AGREE AND CONTINUE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
