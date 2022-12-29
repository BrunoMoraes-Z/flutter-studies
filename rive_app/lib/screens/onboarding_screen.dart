import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_app/screens/components/animated_button.dart';
import 'package:rive_app/screens/components/blur.dart';
import 'package:rive_app/screens/components/custom_sign_in_dialog.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  bool isSignInDialogShowing = false;
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      'active',
      autoplay: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    _btnAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset('assets/Backgrounds/Spline.png'),
          ),
          Blur(sigmaX: 20, sigmaY: 10),
          RiveAnimation.asset(
            'assets/RiveAssets/shapes.riv',
            fit: BoxFit.fitWidth,
          ),
          Blur(sigmaX: 30, sigmaY: 30),
          AnimatedPositioned(
            top: isSignInDialogShowing ? -50 : 0,
            duration: Duration(milliseconds: 240),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    SizedBox(
                      width: 260,
                      child: Column(
                        children: [
                          Text(
                            'Learn design & code',
                            style: TextStyle(
                              fontSize: 60,
                              fontFamily: 'Poppins',
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Don\'t skip design, Lern design and code, by building real apps with flutter and swift. Complete courses about the best tools',
                          ),
                        ],
                      ),
                    ),
                    Spacer(flex: 2),
                    AnimatedButton(
                      btnAnimationController: _btnAnimationController,
                      onTap: () {
                        Future.delayed(
                          Duration(milliseconds: 800),
                          () {
                            setState(() => isSignInDialogShowing = true);
                            customSignInDialog(
                              context: context,
                              onClose: (_) {
                                setState(() => isSignInDialogShowing = false);
                              },
                            );
                          },
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        'Purchase includes access to 30+ courses, 240+ premium tutorials, 10+ hours of videos, source files and certificates.',
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
