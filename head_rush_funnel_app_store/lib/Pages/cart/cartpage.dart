import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Pages/paymentpage.dart';
import 'components/body.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Your Cart"),
        ),
        body: Body(),
        bottomNavigationBar: CheckOutCard(),
            /*new Container(
              padding: (EdgeInsets.only(top: 50, left: 35, right: 35)),
              child: ElevatedButton(
                child: Text('Check out'),
                onPressed: () {
                  // Navigate to second route when tapped.
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PaymentPage();
                  }));
                },
              ),
            ),*/
      );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white, 
        boxShadow: [
        BoxShadow(
          offset: Offset(0, -15),
          blurRadius: 20,
          color: Colors.grey.withOpacity(0.5),
        )
      ]),
      child: Column(
        children: [
          Row(children: [
            Text(
                "SubTotal: ", 
                style: TextStyle(
                fontSize: 12, 
                color: Colors.black),),
            Spacer(),
            Text(
              "\$(TotalPrice)", 
              style: TextStyle(
              fontSize: 12, 
              color: Colors.black),)
          ],),
          Row(children: [
            Text(
                "Discount: ", 
                style: TextStyle(
                fontSize: 12, 
                color: Colors.black),),
            Spacer(),
            Text(
              "-\$(20% Discount)", 
              style: TextStyle(
              fontSize: 12, 
              color: Colors.black),)
          ],),
          Row(children: [
            Text(
                "Total: ", 
                style: TextStyle(
                fontSize: 12, 
                color: Colors.black),),
            Spacer(),
            Text(
              "\$(TotalPrice)", 
              style: TextStyle(
              fontSize: 12, 
              color: Colors.black),)
          ],),
          SizedBox(   //Use of SizedBox 
                height: 10, 
          ), 
          SizedBox(
            width: 200,
            height: 50,
            child: ElevatedButton(
              child: Text('Check Out'),
              onPressed: () {
                // Navigate to second route when tapped.
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PaymentPage();
                }));

              })
          )
        ],
      ),
    );
  }
}
