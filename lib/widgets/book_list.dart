import 'package:flutter/material.dart';

import '../constants/assets.dart';
import '../constants/palette.dart';

class BookList extends StatelessWidget {
  const BookList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Container(
              color: Palette.white,
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    color: Palette.white,
                    margin: EdgeInsets.only(right: 20),
                    // color: Colors.green,
                    width: 130,
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              Assets.movie1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                'Ther Melian: Discord',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Shienny M.S',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Palette.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            color: Palette.orange,
            height: 500.0,
          )
        ],
      ),
    );
  }
}
