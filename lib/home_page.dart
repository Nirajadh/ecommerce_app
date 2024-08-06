import 'package:ecommerce_app/global_variables.dart';
import 'package:ecommerce_app/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All', 'Nike', 'Adidas', 'Bata'];
late String selectedFilter;
@override
void initState() {
  super.initState();
  selectedFilter=filters[0];
  }
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
        borderRadius: BorderRadius.horizontal(left: Radius.circular(60)));
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes \nCollection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, i) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                             selectedFilter=filters[i];
                          });
                         
                        },
                        child: Chip(
                          backgroundColor:  selectedFilter==filters[i]? Theme.of(context).primaryColor:const Color.fromRGBO(245, 247, 249, 1) ,
                          label: Text(filters[i]),
                          padding:
                             const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          side:
                             const BorderSide(color: Color.fromRGBO(245, 247, 249, 1)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        ),
                      ));
                },
              ),
            ),

Expanded(

  
    child: ListView.builder(
      itemCount: 4,
      
      
      itemBuilder: (context,i){
        final product= products[i];
    return Product(title: product['title'] as String, price: product['price'] as double, image: product['imageUrl']as String); 
      },
    ),
  ),





          ],




        ),
      ),
    );
  }
}
