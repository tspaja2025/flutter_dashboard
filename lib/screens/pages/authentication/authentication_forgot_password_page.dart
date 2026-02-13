import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthenticationForgotPasswordPageScreen extends StatelessWidget {
  const AuthenticationForgotPasswordPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Column(
        children: [
          Row(children: [const Text("Forgot Password Page").bold().large()]),

          const SizedBox(height: 16),

          Center(
            child: SizedBox(
              width: 400,
              child: Card(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    const Text("Forgot Password").x4Large().bold(),
                    const Text(
                      "Enter your email address and we'll send you instructions to reset your password.",
                    ).muted().small(),

                    const SizedBox(height: 16),

                    TextField(placeholder: const Text("Email address")),

                    const SizedBox(height: 16),

                    SizedBox(
                      width: double.infinity,
                      child: PrimaryButton(
                        onPressed: () {},
                        child: const Text("Send Reset Instructions"),
                      ),
                    ),

                    const SizedBox(height: 16),

                    Stack(
                      alignment: .center,
                      children: [
                        const Divider(),
                        const Text(
                          "or continue with",
                          style: TextStyle(backgroundColor: Colors.white),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: .center,
                      spacing: 16,
                      children: [
                        OutlineButton(
                          onPressed: () {},
                          child: const Text("Google"),
                        ),
                        OutlineButton(
                          onPressed: () {},
                          child: const Text("Github"),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Already have an account? Sign in"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
