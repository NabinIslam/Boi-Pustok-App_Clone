// import 'package:e_learning/view/show_page.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class Dashboard2 extends StatefulWidget {
//   const Dashboard2({Key? key}) : super(key: key);
//
//   @override
//   _Dashboard2State createState() => _Dashboard2State();
// }
//
// class _Dashboard2State extends State<Dashboard2> {
//   List _details =[];
//
//   loadDetails()async{
//     var _firestoreInstance = FirebaseFirestore.instance;
//     QuerySnapshot qn =
//     await _firestoreInstance.collection("poet-details").get();
//     setState(() {
//       for(int i=0 ; i < qn.docs.length; i++){
//         _details.add({
//           "poet" :qn.docs[i]["poet"],
//           "poet-name" :qn.docs[i]["poet-name"],
//           "poet-details" :qn.docs[i]["poet-details"],
//           "img-path" :qn.docs[i]["img-path"]
//         });
//         //print(qn.docs[i]["img-path"]);
//       }
//     });
//     return qn.docs;
//   }
//
//   @override
//   void initState() {
//     loadDetails();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: () =>
//           MaterialApp(
//             debugShowCheckedModeBanner: false,
//             //... other code
//             builder: (context, widget) {
//               //add this line
//               ScreenUtil.setContext(context);
//               return MediaQuery(
//                 //Setting font does not change with system font size
//                 data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//                 child: Scaffold(
//                   body: SafeArea(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 RaisedButton(
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15)
//                                   ),
//                                   color: Colors.red,
//                                   onPressed: (){
//                                     Navigator.pop(context);
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Row(
//                                       children: [
//                                         Icon(Icons.arrow_back,color: Colors.white,size: 28.sp,),
//                                         SizedBox(width: 5,),
//                                         Text('Back',style: TextStyle(fontSize: 23.sp,color: Colors.white),)
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Card(
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15)
//                                   ),
//                                   color: Colors.blue,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text('কবিতা সমূহ',style: TextStyle(fontSize: 23.sp,fontWeight: FontWeight.bold,color: Colors.white),),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: 10,),
//                           Expanded(
//                             child: GridView.builder(
//                                 scrollDirection: Axis.vertical,
//                                 itemCount: _details.length,
//                                 gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 2,
//                                   childAspectRatio: 1,
//                                 ), itemBuilder: (_,index){
//                               return GestureDetector(
//                                 onTap: (){ Navigator.push(context,
//                                     MaterialPageRoute(builder: (context)=>ShowPage(_details[index]["poet-name"], _details[index]["poet-details"])));},
//                                 child: Card(
//                                   color: Colors.blue.shade200,
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(15)
//                                   ),
//                                   elevation: 3,
//                                   child: Column(
//                                     children: [
//                                       AspectRatio(aspectRatio: 1.7, child: Image.network(_details[index]["img-path"][0])),
//                                       SizedBox(height: 10,),
//                                       Text("${_details[index]["poet-name"]}",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
//                                       Text("${_details[index]["poet"]}",style: TextStyle(fontSize: 17.sp),),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             }),)
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//     );
//
//
//   }
// }