import 'package:TokeninApp/Animation/FadeAnimation.dart';
import 'package:TokeninApp/bloc.nagivation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';

class SiBejoPage  extends StatelessWidget with NavigationStates {
  @override
Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      	child: Container(
	        child: Column(
	          children: <Widget>[
	            Container(
	              height: 400,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/images/background2.jpg'),
	                  fit: BoxFit.fitHeight
	                ),
	              ), 
	            ),
              Container(
	              height: 200,
	              decoration: BoxDecoration(
	                image: DecorationImage(
	                  image: AssetImage('assets/images/background3.jpg'),
	                  fit: BoxFit.fitHeight
	                ),
	              ), 
	            ),
              Padding(
	              padding: EdgeInsets.all(20.0),
	              child: Column(
	                children: <Widget>[
	                  FadeAnimation(1.8, Container(
	                    padding: EdgeInsets.all(5),
	                    decoration: BoxDecoration(
	                      color: Colors.white,
	                      borderRadius: BorderRadius.circular(10),
	                      boxShadow: [
	                        BoxShadow(
	                          color: Color.fromRGBO(143, 148, 251, .2),
	                          blurRadius: 20.0,
	                          offset: Offset(0, 10)
	                        )
	                      ]
	                    ),
	                    child: Column(
	                      children: <Widget>[
	                        Container(
	                          padding: EdgeInsets.all(8.0),
	                          decoration: BoxDecoration(
	                            border: Border(bottom: BorderSide(color: Colors.grey[100]))
	                          ),
	                          child: ListTile (
                            title: Text(
                          "Si Bejo adalah adventure platformer mobile gaming dengan aksi keren tembak-tembakan, ledakan dahsyat, labirin seru dan collectible crypto items promosi wisata & budaya. Ada 5 level jitu yang bisa dimainkan secara cepat & asyik, cocok untuk menghabiskan waktu luangmu.",
                          textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFFF9800), fontSize: 12, fontWeight: FontWeight.w500),
                           ), 
                          ),
	                        ),
	                      ],
	                    ),
	                  )),
	                ],
	              ),
	            )
	          ],
	        ),
	      ),
      )
    );
  } 
}