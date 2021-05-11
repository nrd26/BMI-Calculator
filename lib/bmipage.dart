import 'package:flutter/material.dart';
import 'package:bmi_calculator/resultpage.dart';
import 'package:bmi_calculator/theme.dart';


class BmiPage extends StatefulWidget {

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {

  bool isButtonPressed  = false;
  bool isButtonPressed2  = false;
  int age = 17;
  int weight = 50;

  int height = 180;
  double maxHeight = 220;
  double minHeight = 120;

  ageIncrement(){
    setState(() {
     age++; 
    });
  }

  ageDecrement(){
    setState(() {
     age--; 
    });
  }

  weightIncrement(){
    setState(() {
     weight++; 
    });
  }

  weightDecrement(){
    setState(() {
     weight--; 
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Container(
        color:secondary,
        child: Column(
          children: <Widget>[
            AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "BMI Calculator",
                      style:
                      TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary
                    ),
                    child: RaisedButton(
                      color: isButtonPressed ? Colors.grey[700] : Colors.transparent,
                      // highlightColor: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          isButtonPressed = !isButtonPressed;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         Image.asset('images/male.png',height: 100.0,width: 100.0,),
                         SizedBox(
                             height: 20.0,
                          ),
                         Text('MALE',style: headlines)
                       ],
                        ),
                    ),

                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary
                    ),
                    // child: RaisedButton(
                    //   color: Colors.transparent,
                    //   onPressed: ()=> print("Button Pressed"),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: <Widget>[
                    //       Image.asset('images/female.png',height: 100.0,width: 100.0,),
                    //       SizedBox(
                    //          height: 20.0,
                    //       ),
                    //       Text('FEMALE',style: headlines)
                    //     ],
                    //   ),
                    // ),
                    child: RaisedButton(
                      color: isButtonPressed2 ? Colors.grey[700] : Colors.transparent,
                      // highlightColor: Colors.redAccent,
                      onPressed: () {
                        setState(() {
                          isButtonPressed2 = !isButtonPressed2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('images/female.png',height: 100.0,width: 100.0,),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('FEMALE',style: headlines)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

            Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(0.4),
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                
                        Text('HEIGHT',style: headlines),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("$height", style: boldNumber),
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: minHeight,
                          max: maxHeight,
                          activeColor: Colors.white,
                          inactiveColor: Colors.black,
                          onChanged: ( double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          semanticFormatterCallback: (double newValue) {
                            return '$newValue.round()';
                          }
                    )
                      ],
                    ),
                  ),
            ),

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color:primary
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    
                        Text('WEIGHT',style: headlines),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("$weight", style: boldNumber),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: weightDecrement,
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: Center(
                                  child: Text("-", style: secondaryButtonColorStyle,),
                                ),
                              ),
                            ),

                             Container(
                              height: 40.0,
                              width: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white
                              ),
                              child: InkWell(
                                  onTap: weightIncrement,
                                  child: Center(
                                    child: Text("+", style: secondaryButtonColorStyle,),
                                ),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    
                        Text('AGE',style: headlines),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("$age",style: boldNumber),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: ageDecrement,
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: Center(
                                  child: Text("-", style: secondaryButtonColorStyle,),
                                ),
                              ),
                            ),

                             Container(
                              height: 40.0,
                              width: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white
                              ),
                              child: InkWell(
                                  onTap: ageIncrement,
                                  child: Center(
                                    child: Text("+", style: secondaryButtonColorStyle,),
                                ),
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),

            
            
             InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(height: height,weight: weight,))),
                  child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.only(top: 10.0),
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Center(
                    child: Text('CALCULATE BMI', style: primaryButtonStyle),
                    ),
               ),
             ),
          

            ],
        ),
  
      
    );
  }
}
