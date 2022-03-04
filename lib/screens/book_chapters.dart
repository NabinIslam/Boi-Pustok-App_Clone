import 'package:boi_pustok_clone_2/screens/chapter_details.dart';
import 'package:flutter/material.dart';

class BookChapters extends StatelessWidget {
  const BookChapters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
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
                icon: Icon(Icons.arrow_back,
                  size: 17,),
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
          itemBuilder: (BuildContext context, index){
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChapterDetails()));
              },
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: size.width * .3,
                  height: 50,
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
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        itemCount: 40,
      ),
    );
  }
}
