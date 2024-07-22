import 'package:flutter/material.dart';

import '../chooseartist/chooseartist.dart';

class Namepage extends StatelessWidget {
  const Namepage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: const Text("Create account"),
          leading: Image.asset("assets/icons/ChevronLeft.png")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your name?",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This appears on your spotify profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),SizedBox(height: 30,),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "By tapping on \"Create Account\", you agree to the spotify Terms of Use.",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Terms of Use",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Privacy Policy",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Please send me news and offers from Spotify.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                  size: 35,
                )
              ],
            ),SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Share my registration data with Spotify’s content providers for marketing purposes.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Center(
                child: SizedBox(height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.white)),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectArtist()));},
                      child: Text(
                        "Create an account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
