import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/body/body.dart';
import 'package:my_portfolio/widgets/header/header.dart';
import 'package:my_portfolio/widgets/social/social_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 75),
          child: AppBar(
            leadingWidth: 250,
            leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                    ),
                  ),
                  Text("Vyshnav Sasidharan")
                ],
              ),
            ),
            title: Header()
          )),
          body: Stack(
            children: [
              BodyWidget(),
              Positioned(
                left: 0,
                top: MediaQuery.of(context).size.height * 0.3,
                child: SocialBar(isFooter: false,)
              )
            ],
          )
    );
  }
}
