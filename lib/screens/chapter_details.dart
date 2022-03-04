import 'package:boi_pustok_clone_2/screens/chapter_screen.dart';
import 'package:flutter/material.dart';

class ChapterDetails extends StatefulWidget {
  const ChapterDetails({Key? key}) : super(key: key);

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  int _likeCount = 0;
  int _dislikeCount = 0;

  incrementLikeCount() {
    setState(() {
      _likeCount++;
    });
  }

  incrementDisLikeCount() {
    setState(() {
      _dislikeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: size.width * .3,
            height: size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffFF8625), width: 3)),
            child: Card(
              elevation: 0,
              color: Color(0xffFF8625),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 17,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              width: size.width * .4,
              height: size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xffFF8625), width: 3)),
              child: Card(
                elevation: 0,
                color: Color(0xffFF8625),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Lorem Ipsum',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * .3,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.orange, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Text(
                                'lorem ipsum lorem ipsum lorem ipsum lorem ipsum'
                            ),
                          ),
                        ),
                        width: size.width,
                        height: size.height * .1,
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            border: Border.all(width: 1, color: Colors.orange),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            incrementLikeCount();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Color(0xffFEAB29), width: 3)),
                              child: Card(
                                elevation: 0,
                                color: Color(0xffFEAB29),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${_likeCount}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChapterScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Color(0xffFEAB29), width: 3)),
                              child: Card(
                                elevation: 0,
                                color: Color(0xffFEAB29),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'See',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            incrementDisLikeCount();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Color(0xffFEAB29), width: 3)),
                              child: Card(
                                elevation: 0,
                                color: Color(0xffFEAB29),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${_dislikeCount}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.thumb_down,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              ),
            );
          }),
    );
  }
}
