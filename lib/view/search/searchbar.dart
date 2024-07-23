import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.purple,
                    child: Text(
                      "D",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "What you want to listen?",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Explore your genres",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    width: 150,
                    height: 300,
                    padding: EdgeInsets.all(8),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://i.giphy.com/oSN9DkmyExSe702xpa.webp",
                          ),
                          fit: BoxFit.fitHeight),
                    ),
                    child: Text(
                      "#bollywood",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 100),
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.discordapp.com/attachments/1250729944569348148/1265156184856465458/searchCard.png?ex=66a07c03&is=669f2a83&hm=a326793b288898ca727c8f154b9c350f0b513e316347000efc0916afa22c4fe1&"))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
