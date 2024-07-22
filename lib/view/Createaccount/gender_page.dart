import 'package:flutter/material.dart';

import 'name_page.dart';

class Genderpage extends StatelessWidget {
  const Genderpage({super.key});

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
              "What's your gender?",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextField(
              decoration: InputDecoration(fillColor: Colors.grey, filled: true,suffixIcon: Icon(Icons.check,color: Colors.white,size: 30,)),
            ),

            SizedBox(
              height: 50,
            ),
            Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStatePropertyAll(Colors.grey[800])),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Namepage()));},
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
