import 'package:flutter/material.dart';

class MyntraLoginUi extends StatefulWidget {
  @override
  _MyntraLoginUiState createState() => _MyntraLoginUiState();
}

class _MyntraLoginUiState extends State<MyntraLoginUi> {

  bool isChecked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Myntra',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600)),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/myntra.png', height: 45)),
            SizedBox(height: 15),
            Text('Sign Up With Myntra',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            SizedBox(height: 30),
            Text('EASILY USING', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)),
                    SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Container(
                          height: 60,
                          width: 150,
                          decoration:BoxDecoration(
                            border: Border.all(width: 1,color: 
                            Colors.black26),
                            borderRadius: BorderRadius.all(Radius.circular(9))
                          ),
                          child: Row(
                          
                            children: [
                              SizedBox(width:10),
                              Image.asset('assets/facebook.png',height: 30,),SizedBox(width:10),
                              Text('Facebook')
                            ],
                          ),
                        ),
                      SizedBox(width:10),
                       Container(
                          height: 60,
                      width: 150,
                          decoration:BoxDecoration(
                            border: Border.all(width: 1,color: 
                            Colors.black26),
                            borderRadius: BorderRadius.all(Radius.circular(9))
                          ),  child: Row(
                        
                            children: [
                              SizedBox(width:10),
                              Image.asset('assets/google.png',height: 30,),SizedBox(width:5),
                              Text('Google')
                            ],
                          ),
                      )
                    ],),
                    SizedBox(height:30),
                    Text('-OR USING WITH-',style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w600)),
                    SizedBox(height:30),
                   Container(
                    
                      decoration:BoxDecoration(
                            border: Border.all(width: 1,color: 
                            Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(9))
                          ),  
                     child: Column(
                       children: [
                       
                          TextField(
                            
                        decoration: InputDecoration
                        (
                          labelText: 'Your Email Address' ,
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        )
                      ), TextField(
                        decoration: InputDecoration(
                          labelText: 'Your Password' ,
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        )
                      )
                       ],
                     ),
                   ),
                   SizedBox(height:35)
                   ,
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     Checkbox(value: isChecked, onChanged: (val){
                       setState(() {
                         isChecked  == true?
                         isChecked=false:isChecked=true;
                       });
                     }),
                     Text('I have a refferal registration code')
                   ],)
                    
          ],
        ),
      ),
    );
  }
}
