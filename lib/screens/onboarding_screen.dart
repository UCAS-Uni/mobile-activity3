import 'package:activity3/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_navigator.dart';
import '../widgets/questions_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF8160EF),
                    Color(0xFF5927FF),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 65),
              width: 138,
              height: 118,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(59),
                  topRight: Radius.circular(59),
                ),
              ),
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                width: 61,
                height: 78,
                fit: BoxFit.scaleDown,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 220,
                left: 20,
              ),
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Bit\nCuckoo',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: '\nCollect your bit coins',
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'How Cuckoo will help?',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 425, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const QuestionsText(
                    text: 'Cuckoo will help you to buy/sell your bit coins',
                  ),
                  const SizedBox(height: 35),
                  const QuestionsText(
                      text: 'Cuckoo will help you to set the price tracker'),
                  const SizedBox(height: 35),
                  const QuestionsText(text: 'Cuckoo is faster smart & Sweet '),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Enter your Mobile Number                                                                  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        width: 38,
                        child: const Center(
                          child: Text(
                            '91',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFE1DDF8),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        height: 56,
                        width: 235,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '   98412012345',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFE1DDF8),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          AppRouter.navigateWithReplacementToWidget(
                              LoginScreen());
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFF37E39F),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                          height: 56,
                          width: 66,
                          child: const Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
