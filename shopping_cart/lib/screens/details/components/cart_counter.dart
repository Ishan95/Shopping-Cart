import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        addButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        addButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          }
        ),
      ],
    );
  }

  SizedBox addButton({IconData? icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    );
  }
}