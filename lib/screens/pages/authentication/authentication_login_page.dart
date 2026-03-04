import 'package:shadcn_flutter/shadcn_flutter.dart';

class AuthenticationLoginPageScreen extends StatelessWidget {
  const AuthenticationLoginPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [const Text("Login Page").bold.large]),

        Center(
          child: SizedBox(
            width: 400,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Welcome back").x4Large.bold,
                  const Text("Please sign in to your account").muted.small,

                  const SizedBox(height: 16),

                  TextField(placeholder: const Text("Email address")),
                  const SizedBox(height: 16),
                  TextField(placeholder: const Text("Password")),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Forgot your password?"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: () {},
                      alignment: Alignment.center,
                      child: const Text("Sign in"),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Stack(
                    alignment: Alignment.center,
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  ).gap(16),

                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text("Don't have an account? Sign up"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ).gap(16).withPadding(all: 16);
  }
}
