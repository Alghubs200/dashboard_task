import 'package:dashboard_task/constants/assets.dart';
import 'package:flutter/material.dart';

import '../constants/movie_book.dart';
import '../constants/palette.dart';

class BookList1 extends StatelessWidget {
  const BookList1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieBooks = MovieBook.getPopularMovieBooks();

    return Container(
      color: Palette.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: Container(
              color: Palette.white,
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieBooks.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Palette.white,
                    margin: EdgeInsets.only(right: 20),
                    // color: Colors.green,
                    width: 190,
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              movieBooks[index].image,
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
                                movieBooks[index].name,
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
        ],
      ),
    );
  }
}
