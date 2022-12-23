import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {

  final String category = "Your Choice";
  final String title = "The Beauty of Art";
  final String description = "The perfect body";
  final String owner = "Anonymous";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(
        width: 1050,
        height: 650,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://cdn.dribbble.com/users/2142686/screenshots/14141429/image.png?compress=1&resize=800x600&vertical=top"),
          //image: NetworkImage("https://cdn.dribbble.com/userupload/2585383/file/original-ecbe1ce28078736c2476d128976d2daf.png?compress=1&resize=800x600&vertical=top"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),

      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: const BorderRadius.all(Radius.circular(32)),
            ),
          ),
          Positioned(
            top: 35,
            right: 125,
            child: Text(
              category,
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: "BeautifulPeoplePersonalUse",
                color: Colors.white,
              ),
              //AppTheme.darkTextTheme.bodyText1,
            ),
          ),
          Positioned(
            top: 70,
            right: 50,
            child: Text(
              title,
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Countryside",
                color: Colors.white,
              ),
              //style: AppTheme.darkTextTheme.headline4,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 0,
            child: Text(
              description,
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: "Countryside",
                color: Colors.white,
              ),
              //style: AppTheme.darkTextTheme.bodyText1,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 0,
            child: Text(
              owner,
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 45,
                fontWeight: FontWeight.w700,
                fontFamily: "Signamaestro",
                color: Colors.white,
              ),
              //style: AppTheme.darkTextTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}