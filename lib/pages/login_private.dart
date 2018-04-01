import 'package:flutter/material.dart';

class PrivateLogin extends StatelessWidget{
final TextEditingController _userController = new TextEditingController();
final TextEditingController _passController = new TextEditingController();
static final assetImage = new AssetImage("lib/assets/images/ctrends_logo.png");
final logo = new Image(image: assetImage, width: 100.0, height: 100.0);
  @override
  Widget build(BuildContext context){
    return new Material(
       color: Colors.white,
       child: new InkWell(
         child: new Container(
           width: 210.0,
           padding: new EdgeInsets.all(20.0),
           child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Image(image: assetImage, width: 120.0, height: 120.0),
                            new Text("EBS Lite", style: new TextStyle(color: Colors.grey, fontSize: 25.0),),
                        ],
                      )
                    ),
                    new Container(
                      width: 210.0,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                           new Container(
                            padding: new EdgeInsets.only(bottom: 10.0),
                            height: 50.0,
                            width: 105.0,
                            child:new RaisedButton(
                                  color: Colors.white,
                                  child: new Text("Company", style: new TextStyle(color: Colors.grey),),
                                  onPressed: (){
                                    Navigator.of(context).pushNamed("/");
                                    
                                  },
                              ),
                           ),
                           new Container(
                            padding: new EdgeInsets.only(bottom: 10.0),
                            height: 50.0,
                            width: 105.0,
                            child:new RaisedButton(
                                color: Colors.red,
                                child: new Text("Private", style: new TextStyle(color: Colors.white),),
                                onPressed: (){
                                  Navigator.of(context).pushNamed("/privateLogin");
                                  
                                },
                            ) 
                           ) 
                        ],
                      )
                    ),
                    new Container(
                      padding: new EdgeInsets.only(bottom: 10.0),
                      width: 210.0,
                      child: new TextField(
                          controller: _userController,
                          textAlign: TextAlign.center,
                          decoration: new InputDecoration(
                          hintText: 'Username',
                          fillColor: Colors.black,
                          
                        ),
                      ),
                    ),
                    new Container(
                      padding: new EdgeInsets.only(bottom: 10.0),
                      width: 210.0,
                      child: new TextField(
                          controller: _passController,
                          decoration: new InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.black
                        ),
                      ),
                    ),
                    
                    new Container(
                      padding: new EdgeInsets.only(bottom: 10.0),
                      height: 50.0,
                      width: 210.0,
                      child: new RaisedButton(
                          color: Colors.red,
                          child: new Text("Log In", style: new TextStyle(color: Colors.white),),
                          onPressed: (){
                            Navigator.of(context).pushNamed("/homePage");
                            print("Username is: "+_userController.text);
                            print("Password is: "+_passController.text);
                          },
                      ) 
                    ),
                    new Container(
                      alignment: Alignment.center,
                      padding: new EdgeInsets.only(top: 20.0),
                      height: 50.0,
                      width: 210.0,
                      child: new Text("CTrends Software & Service Ltd.", style: new TextStyle(color: Colors.grey))
                    )
                  ],
                ),
         )
       ), 
    );
  }
}