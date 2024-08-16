import 'package:flutter/material.dart';
import '../models/drink.dart';

class DrinkTile extends StatelessWidget {
  Drink drink;
  void Function()? onTap;
  DrinkTile({
    super.key,
    required this.drink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //drink pic
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(drink.imagePath),
            ),
          ),

          //description
          Text(
            drink.description,
            style: TextStyle(color: Colors.grey),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //drink name
                    Text(
                      drink.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 5),
                    //price
                    Text(
                      'RM ' + drink.price,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                //plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
          //button to add to cart
        ],
      ),
    );
  }
}
