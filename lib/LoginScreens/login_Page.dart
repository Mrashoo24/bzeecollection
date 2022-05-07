import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
     body: Stack(
       children: [
         CustomScrollView(
           slivers: [
             SliverAppBar(
               title: Image.asset("Assets/zara-brand-40033.png",),
               backgroundColor: Colors.transparent,
               toolbarHeight: H*0.2,
               pinned: true,
             ),
             SliverToBoxAdapter(
               child: SingleChildScrollView(
                 child: Padding(
                   padding:  EdgeInsets.only(left: W*.12),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: H*.03,),
                      Text("LOG IN",style: TextStyle(fontSize: H*.035,fontWeight: FontWeight.w400),),
                       Container(
                         width: W*.85,
                         decoration: BoxDecoration(

                           border: Border(
                             bottom: BorderSide(color: Colors.black)
                           )
                         ),
                         child: TextFormField(
                          decoration: InputDecoration(
                              label: Padding(
                                padding:  EdgeInsets.only(top: H*.05),
                                child: Text("GMAIL",style: TextStyle(fontSize:18,color: Colors.grey.shade500),),
                              ),
                            border: InputBorder.none
                          ),
                         ),
                       ),
                       SizedBox(height: H*0.008,),
                       Container(
                         width: W*.85,
                         decoration: BoxDecoration(

                             border: Border(
                                 bottom: BorderSide(color: Colors.black)
                             )
                         ),
                         child: TextFormField(
                           decoration: InputDecoration(
                               label: Padding(
                                 padding:  EdgeInsets.only(top: H*.05),
                                 child: Text("PASSWORD",style: TextStyle(fontSize:18,color: Colors.grey.shade500),),
                               ),
                               border: InputBorder.none
                           ),
                         ),
                       ),
                       SizedBox(height: H*.06,),
                       Container(
                         height: H*.05,
                         width: W*0.85,
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.zero
                         ),
                         child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white),)),
                       ),
                       SizedBox(height: H*.06,),
                       Text("FORGOT YOUR PASSWORD?",style: TextStyle(color: Colors.grey,fontSize: 10),),
                       SizedBox(height: H*.11,),
                       Container(
                         height: H*.05,
                         width: W*0.35,
                         decoration: BoxDecoration(
                             border:Border.all(color: Colors.black)
                         ),
                         child: Center(child: Text("HELP",style: TextStyle(color: Colors.black),)),
                       ),
                       SizedBox(height: H*.02,),
                       Row(
                         children: [
                           Text("DON'T HAVE AN ACCOUNT?",style: TextStyle(color: Colors.grey,fontSize: 12),),
                           SizedBox(width: 5,),
                           Text("Register",style: TextStyle(fontWeight: FontWeight.bold,),)
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
             )
           ],
         ),
         Container(
           height: 100,
           color: Colors.transparent,
           child: SafeArea(
             child: Stack(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Icon(Icons.close),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 5),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Icon(Icons.settings),
                       SizedBox(width: W*0.04,),
                       Icon(Icons.chat_outlined)
                     ],
                   ),
                 )

               ],
             ),
           )
         )
       ],
     )
    );
  }
}
