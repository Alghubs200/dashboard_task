import 'package:dashboard_task/constants/book_data.dart';
import 'package:dashboard_task/constants/movie_book.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'bookmark_page.dart';
import '../constants/app_constant.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bookModel = BookModel.getBookData();
    return SingleChildScrollView(
      child: Container(
        height: 800,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    hintText: 'Search for Titles, Topics or Authors',
                    prefixIcon: Icon(Icons.search_outlined),
                    prefixIconColor: Colors.grey[200]),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: bookModel.length,
            //   itemBuilder: (context, index) => ListTile(
            //     title: Text(
            //       bookModel[index].book_title!,
            //       style:
            //           TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            //     ),
            //     subtitle: Text('${bookModel[index].book_release_year!}'),
            //     trailing: Text(
            //       '${bookModel[index].rating!},',
            //     ),
            //     leading: Image.asset('${bookModel[index].book_poster_url!}'),
            //   ),
            // ))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Recent',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text('Clear'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 400,
              color: Colors.black,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  child: Center(child: Text('data')),
                  height: 35,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
