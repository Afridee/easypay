

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Howdy Arafat,", style: TextStyle(
                  fontSize: 20
                ),),
                SizedBox(height: 15),
                Text("BDT 12600.89", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("Total you owe",style: TextStyle(fontSize: 20)),
                SizedBox(height: 30),
                Text("Credit Available: BDT 56820.12", style: TextStyle(
                    fontSize: 15
                ),),
                Divider(
                  height: 80,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("22123", style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        )),
                        Text("Due in 15 days", style:TextStyle(
                            fontSize: 13
                        ))
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        Text("22123", style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        )),
                        Text("Due in 15 days", style:TextStyle(
                            fontSize: 13
                        ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Upcoming payments"),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffD2E063),
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("All Orders"),
                          )
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey
                    )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Container(
                             child: Center(child: Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))),
                             height: 40,
                             width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                width: 5,
                                color: Color(0xff00C2E4),
                              )
                            ),
                          ),
                          title: Text("Yellow Shopping", style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("Wed, 25 August", style: TextStyle(fontSize: 13)),
                          trailing: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text("Pay BDT 2212", style: TextStyle(fontSize: 10)),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffD2E063),
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Container(
                            child: Center(child: Text("3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  width: 5,
                                  color: Color(0xff00C2E4),
                                )
                            ),
                          ),
                          title: Text("Yellow Shopping", style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("Wed, 25 August", style: TextStyle(fontSize: 13)),
                          trailing: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("BDT 2212", style: TextStyle(fontSize: 10)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
