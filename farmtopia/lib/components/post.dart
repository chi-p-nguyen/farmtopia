import 'package:flutter/material.dart';

class BlogPost extends StatelessWidget {
  final String author;
  final String content;

  const BlogPost({this.author, this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0),
      child: Container(
          height: 200.0,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(-3, 3),
                blurRadius: 1.0,
                spreadRadius: 1.0)
          ], color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Row(
                children: [
                  SizedBox(width: 10.0),
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.clinicasamaniego.com/wp-content/uploads/sites/5/2018/10/uno.png')),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          this.author,
                          style: TextStyle(fontSize: 24.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.agriculture)
                      ]),
                      Text('10-23-2020')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                this.content,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18.0),
              ),
              const Divider(
                color: Colors.blueGrey,
                height: 30,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.thumb_up_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.insert_comment_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.share_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.blueGrey,
                  )
                ],
              )
            ],
          )),
    );
  }
}
