import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:products/app_theme.dart';

class Card2 extends StatefulWidget {
  const Card2({super.key});

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
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
    return Material(
      child: Stack(
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
                  color: Colors.black.withOpacity(0.6),
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
                    //color: Colors.black.withOpacity(0.2),
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
                        // Add dark overlay BoxDecoration
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: const BorderRadius.all(Radius.circular(32))
                          ),
                        ),
                        // Add Container, Column, Icon and Text
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.book,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(height: 8,),
    
                              Text(
                                "What's in the product?",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "BeautifulPeoplePersonalUse",
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5,),
                            ],
                          ),
                        ),
    
                        
                        // Add Center widget with Chip widget children
                        Center(
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 5,
                            runSpacing: 0.01,
                            children: [
                              Chip(
                                label: Text(
                                  "Chebe",
                                  style: AppTheme.darkTextTheme.bodyText1,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.1),
                              ),
    
                              Chip(
                                label: Text(
                                  "Hip n Bum",
                                  style: AppTheme.darkTextTheme.bodyText1,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.1),
                              ),

                              Chip(
                                label: Text(
                                  "Ghana Miracle Seed",
                                  style: AppTheme.darkTextTheme.bodyText1,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.1),
                              ),

                              Chip(
                                label: Text(
                                  "Flat Tummy",
                                  style: AppTheme.darkTextTheme.bodyText1,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.1),
                              ),

                              Chip(
                                label: Text(
                                  "Glutathione",
                                  style: AppTheme.darkTextTheme.bodyText1,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.1),
                              ),

                              Chip(
                                label: Text(
                                  "Healthy Life",
                                  style: AppTheme.darkTextTheme.bodyText1,
                                ),
                                backgroundColor: Colors.black.withOpacity(0.1),
                              ),
                            ],
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
      ),
    );
  }
}