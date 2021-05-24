import 'package:flutter/material.dart';
import 'package:flutter_basic/theme.dart';

class homePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child : Center(
          child: SingleChildScrollView(
                      child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Profile Picture", style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                ),

              SizedBox(
                height: 50,
              ),

              Image.asset(
                "assets/images/primary.png",
                width: 140,
                height: 140,
                fit: BoxFit.fill, /*Agar Memenuhi Karana Height dianggap Space Kosong */),
              
              SizedBox(
                height: 16,
              ),

              Text(
                "Anne Margaritha", style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500 /* w500 Untuk medium */
                ),
                ),

                SizedBox(
                  height : 4
                ),

                Text(
                  "UX Designer", style: TextStyle(
                    fontSize: 16,
                    color: grayColor
                  ),
                ),
                
                SizedBox(
                  height: 40,
                ),

                Wrap(
                  spacing : 38, //Untuk yang kesamping
                  runSpacing: 30, //Untuk yang kebawah
                  children: [
                    Image.asset(
                      "assets/images/item.png", width: 80,
                      ),
                    Image.asset(
                      "assets/images/item2.png", width: 80,
                      ),
                    Image.asset(
                      "assets/images/item3.png", width: 80,
                      ),
                    Image.asset(
                      "assets/images/item4.png", width: 80,
                      ),
                    Image.asset(
                      "assets/images/item5.png", width: 80,
                      ),
                    Image.asset(
                      "assets/images/item6.png", width: 80,
                      ),
                  ],
                  ),

                SizedBox(
                  height : 55
                ),

                Container(
                  width: 224,
                  height: 55,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16) 
                      ),
                    color: orangeColor,
                    onPressed: (){
                      showModalBottomSheet(
                        context: context , 
                        builder: (context){
                          return Container(
                            height: 290,
                            padding: EdgeInsets.symmetric(
                              vertical:50,

                            ),
                            color : grayColor,
                            child : Column(
                              children: [
                                Text
                                ("Update Photo", style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500
                                ),
                                ),
                                
                                SizedBox(
                                  height:12
                                ),

                                Text(
                                  "You are only able to change\nthe picture profile once",style: TextStyle(
                                    fontSize: 18,
                                    color : primaryColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),

                                SizedBox(
                                  height :30,
                                ),

                                Container(
                                  width:224,
                                  height:55,
                                  child : RaisedButton(
                                    color: orangeColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Continue",style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,

                                      ),
                                    
                                    ),
                                  )
                                )
                              ],
                            )
                          );
                        }
                        );
                    },
                    child: Text
                    ("Update Profile", style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryColor
                    ),
                    ),
                  )
                ),

                SizedBox(
                  height: 76,
                )

              ],
            ),
          ),
        ), 
        ),
    );
  }
}