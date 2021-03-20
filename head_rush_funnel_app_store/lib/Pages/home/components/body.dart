import 'package:flutter/material.dart';
import 'package:head_rush_funnel_app_store/Models/Product.dart';
import 'package:head_rush_funnel_app_store/Pages/details/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: (EdgeInsets.only(top: 50)),
          child: Text(
            "Buy 3 get 20% off!",
            style: GoogleFonts.anton(fontSize: 30, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 18,
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) => Item(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final Product product;
  final Function press;
  const Item({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(product.image),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(product.title),
          ),
          Text("\$${product.price}",
              style: TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
