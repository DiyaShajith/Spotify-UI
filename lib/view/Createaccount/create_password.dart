import 'package:flutter/material.dart';

class Createpassword extends StatelessWidget {
  const Createpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Create account"),
          leading: Image.asset("assets/icons/ChevronLeft.png")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create a password",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              decoration: InputDecoration(fillColor: Colors.grey, filled: true),
            ),
            Text(
              "Use atleast 8 characters.",
              style: theme.textTheme.labelLarge!
                  .copyWith(color: theme.colorScheme.onSurface, fontSize: 13),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.grey[800])),
                    onPressed: () {},
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )))
          ],
        ),
      ),
    );
  }
}
