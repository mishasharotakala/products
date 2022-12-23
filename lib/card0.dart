import 'dart:ui';

import 'package:flutter/material.dart';

class Card0 extends StatefulWidget {
  const Card0({super.key});

  @override
  State<Card0> createState() => _Card0State();
}

class _Card0State extends State<Card0> {
  // 1
  final String category = "Your Choice";
  final String title = "The Beauty of Art";
  final String description = "The perfect body";
  final String owner = "Anonymous";

  List<String> data = [
    "https://cdn.dribbble.com/userupload/2585383/file/original-ecbe1ce28078736c2476d128976d2daf.png?compress=1&resize=800x600&vertical=top",
    "https://cdn.dribbble.com/userupload/2972227/file/original-4933a31bf0ea9ed8591c97269a7d7d76.png?compress=1&resize=800x600&vertical=top",
    "https://cdn.dribbble.com/users/2142686/screenshots/14141429/image.png?compress=1&resize=800x600&vertical=top",
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // The backgroumd Image
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Container(
            key: ValueKey<String>(data[_currentPage]),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(data[_currentPage]),
                  fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
        ),


        FractionallySizedBox(
          heightFactor: 0.55,
          child: PageView.builder(
            itemCount: data.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 105,
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
                        top: 20,
                        right: 20,
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}