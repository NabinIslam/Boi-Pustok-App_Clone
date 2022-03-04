import 'package:boi_pustok_clone_2/screens/book_chapters.dart';
import 'package:flutter/material.dart';

class BookLists extends StatelessWidget {
  const BookLists({Key? key}) : super(key: key);

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
                    'List Of Books',
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
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: size.height*.4 / size.width,
        ),
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BookChapters()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
