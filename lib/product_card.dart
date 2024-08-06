import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.title, required this.price ,required this.image});
final String title;
final double price;
final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
   
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),  color: const Color.fromRGBO(12, 158, 231, 0.229),),
        padding:const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        height: 230,
        width: double.infinity,
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( title ,style: Theme.of(context).textTheme.titleMedium,),
      const SizedBox(height: 5,),
        Text('\$ $price' ),
      const SizedBox(height: 5,),
 Center(child: Image.asset(image, height: 130,))
          ],
        ),
      );
    
  }
}