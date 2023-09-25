// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// class NotificationsPage extends StatefulWidget {
//   String payload;

//    NotificationsPage({
//     Key? key,
//     required this.payload,
//   }) : super(key: key);

//   @override
//   State<NotificationsPage> createState() => _NotificationsPageState();
// }

// class _NotificationsPageState extends State<NotificationsPage> {



  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Notifications'),
//         centerTitle: true,
//       ),
//       body: Container(
//         child: Text('Notification'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


class NotificationsPage extends StatefulWidget {
  String payload;
  NotificationsPage({
    Key? key,
    required this.payload,
  }) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    print('Notifications message ${widget.payload}');
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
      backgroundColor:const  Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Notifications',
          style: TextStyle( fontFamily: 'Outfit',
                color: Color(0xFF14181B),
                fontSize: 24,
                fontWeight: FontWeight.normal,),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: widget.payload == null ? Center(
        child: CircularProgressIndicator(),
      ) : ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:const  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:const  [
                  BoxShadow(
                    blurRadius: 0,
                    color: Color(0xFFE0E3E7),
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(0),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding:const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 4,
                      height: 50,
                      decoration: BoxDecoration(
                        color:const  Color(0xFF4B39EF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          widget.payload ,
                          style:
                              const TextStyle(  fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF14181B),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,)
                        ),
                      ),
                    ),
                   const  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: Text(
                        'Mar 8, 2022',
                        style:
                           TextStyle(   fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
          //   child: Container(
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           blurRadius: 0,
          //           color: Color(0xFFE0E3E7),
          //           offset: Offset(0, 1),
          //         )
          //       ],
          //       borderRadius: BorderRadius.circular(0),
          //       shape: BoxShape.rectangle,
          //     ),
          //     child: Padding(
          //       padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
          //       child: Row(
          //         mainAxisSize: MainAxisSize.max,
          //         children: [
          //           Container(
          //             width: 4,
          //             height: 50,
          //             decoration: BoxDecoration(
          //               color: Color(0xFF4B39EF),
          //               borderRadius: BorderRadius.circular(2),
          //             ),
          //           ),
          //           Expanded(
          //             child: Padding(
          //               padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
          //               child: Text(
          //                 'Check-in evaluated',
          //                 style:
          //                    TextStyle(
          //                      fontFamily: 'Plus Jakarta Sans',
          //                           color: Color(0xFF14181B),
          //                           fontSize: 16,
          //                           fontWeight: FontWeight.normal,
          //                    ),
          //               ),
          //             ),
          //           ),
          //           Padding(
          //             padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
          //             child: Text(
          //               'Mar 8, 2022',
          //               style:
          //                  TextStyle(
          //                    fontFamily: 'Plus Jakarta Sans',
          //                         color: Color(0xFF57636C),
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.normal,
          //                  ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
       
        ],
      ),
    );
  }
}
