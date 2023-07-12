import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'singleorder.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("BDT 12600.89", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("Total you owe",style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                ),
                Container(
                  height: 500,
                  child: ListView(
                    children: [
                      ordersListTile(),
                      ordersListTile(),
                      ordersListTile(),
                      ordersListTile()
                    ],
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

class ordersListTile extends StatelessWidget {
  const ordersListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return const SingleOrder();
        }));
      },
      child: ListTile(
        leading: Icon(
          Icons.image_not_supported,
          size: 40,
        ),
        title: Text("Lacoste", style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Wed, 25 August"),
        trailing: Container(
          decoration: BoxDecoration(
              color: Color(0xff333333),
            borderRadius: BorderRadius.circular(10)
          ),
          width: 130,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BDT 2212.12", style: TextStyle(color: Colors.white),),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward, color: Color(0xffD2E063))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
