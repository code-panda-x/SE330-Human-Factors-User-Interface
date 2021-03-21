import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Pages/confirmpage.dart';

class Payment extends StatefulWidget {
  final double total1;

  Payment({@required this.total1});
  PaymentPage createState() => PaymentPage();
}

class PaymentPage extends State<Payment> {

  bool _checked = false;
  bool _checked1 = false;
  bool _checked2 = false;
  bool value = false;
  bool value1 = false;
  bool value2 = false;
  //String total = "100";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Payment"),
        ),
        body: Center(
          child: ListView(children: <Widget>[
            Column(
              children: <Widget>[
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 30.0)),
                        new Text(
                          'Name',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Name on card",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Name cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'Address',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Current Address",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Address cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'City',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "City",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "City cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'State',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "State",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "State cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'Zip Code',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "5 digits",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Zip code cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'Credit/Debit Card Number',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Card Number",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Card number cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'Expiration Date',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Date",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "Expiration date cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(children: [
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new Text(
                          'CVC',
                          style: new TextStyle(
                              color: Colors.black, fontSize: 20.0),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "CVC",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(),
                            ),
                          ),
                          validator: (val) {
                            if (val.length == 0) {
                              return "CVC cannot be empty";
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      ])),
                    )),
                new Container(
                  padding: (EdgeInsets.only(top: 50)),
                  child: Text(
                    "Shipping Information",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Checkbox(
                  value: _checked,
                  onChanged: (value) {
                    setState(() {
                      _checked = !_checked;
                    });
                  },
                ),
                Text('One day'),
                Checkbox(
                  value: _checked1,
                  onChanged: (value1) {
                    setState(() {
                      _checked1 = !_checked1;
                    });
                  },
                ),
                Text('3-5 Days'),
                Checkbox(
                  value: _checked2,
                  onChanged: (value2) {
                    setState(() {
                      _checked2 = !_checked2;
                    });
                  },
                ),
                Text('1+ Week'),
                new Container(
                  padding: (EdgeInsets.only(top: 20, left: 20)),
                  child: Text(
                    "Payment Total: ${widget.total1.toStringAsFixed(2)} USD",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                new Container(
                  padding: (EdgeInsets.only(top: 20, left: 35, right: 35)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // background color
                      primary: Colors.blue,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    child: Text('Confirm Order'),
                    onPressed: () {
                      // Navigate to second route when tapped.
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ConfirmPage();
                      }));
                    },
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
