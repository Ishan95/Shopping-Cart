import 'package:flutter/material.dart';
import 'package:shopping_cart/constants.dart';
import 'package:shopping_cart/produst/products.dart';
import 'package:shopping_cart/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  late final Product product;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: product.color,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Hero(
                          tag: "${product.id}",
                          child: Image.asset(product.image),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        product.title,
                        style: const TextStyle(color: kTxtLightColor),
                      ),
                    ),
                    Text(
                      "\$${product.price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}