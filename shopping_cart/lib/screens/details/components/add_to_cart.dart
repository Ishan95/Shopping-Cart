import 'package:flutter/material.dart';
import 'package:shopping_cart/constants.dart';
import 'package:shopping_cart/produst/products.dart';
import 'package:shopping_cart/screens/home/components/tabs/cart.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20.0),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.redAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            width: size.width * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),                       
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: Text(
                    "BUY",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}